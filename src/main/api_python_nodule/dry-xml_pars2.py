import requests
from bs4 import BeautifulSoup
import xml.etree.ElementTree as ET
import xmltodict
# import oracledb # oracledb 라이브러리 임포트(불러오기)
import pyodbc
import json
import numpy as np
from datetime import datetime

try:
    # DB에 연결 (호스트이름 대신 IP주소 가능)
    db = "xe"
    con = pyodbc.connect(
        driver="{MYSQL ODBC 8.4 Unicode Driver}",
        server="mydb.cxqs0u844kgr.ap-northeast-2.rds.amazonaws.com",
        uid="scott",
        pwd="tigerlion2401$",
        database=db
    )
    
    # con = oracledb.connect( user="scott", password="tiger", dsn="localhost:1521/xe")
    # 연결된 DB 지시자(커서) 생성
    cursor = con.cursor()
    
    rows = '50'
    # url = 'http://api.nongsaro.go.kr/service/garden/'
    key = '20240513TIQYSE6AZKGZBGVUJMZFFW'
    list_type = 'dryGardenList?'

    url = f'http://api.nongsaro.go.kr/service/dryGarden/{list_type}'
    api_key = f'apiKey={key}'
    num_of_rows = f'&numOfRows={rows}'

    r = requests.get(url + api_key + num_of_rows)
    data = BeautifulSoup(r.text, 'lxml-xml')
    # print(data)
    
    cntnts_no = data.find_all('cntntsNo')
    cntnts_sj = data.find_all('cntntsSj')
    
    moran_category = {}
    moran_category["직립형"] = 1
    moran_category["로제트형"] = 5
    moran_category["포도송이형"] = 7
    moran_category["군생형"] = 8
    moran_category["관목형"] = 9
    moran_category["포복형"] = 10
    moran_category["불규칙형"] = 11
    moran_category["탑형"] = 12
    
    for i, j in zip(cntnts_no, cntnts_sj):
        no = i.text
        name = j.text.replace("'", '"')
        print(no + ": " + name)
        
        # 가져온 데이터 DICT 변환 (xml -> json 변환)
        url = f'http://api.nongsaro.go.kr/service/dryGarden/dryGardenDtl?apiKey={key}&cntntsNo={no}'
        # print(url)
        r = requests.get(url)
        
        xml = xmltodict.parse(r.text) ["response"] ["body"] ["item"]
        # print(xml)
    
        info = {}
        info["clCodeNm"] = str(xml["stleSeNm"]).replace("\"", "''").replace("\n", "") # 생육형태
        info["flwrInfo"] = str(xml["flwrInfo"]).replace("\"", "''") + " " + str(xml["lfclChngeInfo"]).replace("\"", "''").replace("\n", "") # 꽃 정보 & 여색변화
        info["speclmanageInfo"] = str(xml["chartrInfo"]).replace("\"", "''").replace("\n", "") + " " + str(xml["lighttInfo"]).replace("\"", "''").replace("\n", "") # 특성 & 광
        info["adviseInfo"] = str(xml["tipInfo"]).replace("\"", "''").replace("\n", "") # tip
        info["watercycleCodeNm"] = str(xml["waterCycleInfo"]).replace("\"", "''").replace("\n", "") # 물주기
        info["managedemanddoCodeNm"] = str(xml["manageDemandNm"]).replace("\"", "''").replace("\n", "") # 관리요구도
        info["managelevelCodeNm"] = str(xml["manageLevelNm"]).replace("\"", "''").replace("\n", "") # 관리수준
        info["postngplaceCodeNm"] = str(xml["batchPlaceInfo"]).replace("\"", "''").replace("\n", "") # 배치장소 
        # print(info)
        
        json_pras = json.loads(json.dumps(info, ensure_ascii=False).replace("'", "''").replace("\n", ""))
        
        # JSON 문자열을 SQL에 안전하게 포함
        json_desc = json.dumps(json_pras, ensure_ascii=False).replace("'", "''")
        # print(json_desc)
        
        # insert into product
        price = int(np.random.randint(4000, 700000, 1))
        quantity = int(np.random.randint(0, 15, 1))
        dcrate = int(np.random.randint(0, 90, 1))
        wholesale = price - int(float(dcrate / 100) * price)
        month = int(np.random.randint(1, 5, 1))
        date = int(np.random.randint(1, 21, 1))
        
        cate_gory = 0
        for c in moran_category:
            if c in info["clCodeNm"][0:5]:
                cate_gory = moran_category[c]
                break
        print(cate_gory)

        query = f"""
            INSERT INTO MORANMORAN.PRODUCT (
                pd_id, c_id, pd_name, pd_price, pd_description,
                pd_quantity, pd_wholesale, pd_dcrate, pd_created_at,
                pd_is_maintain, pd_retention_period)
            VALUES ({no}, {cate_gory}, '{name}', {price}, '{json_desc}', {quantity}, {wholesale}, {dcrate}, '2024-{month}-{date}', 0, NULL)
        """
        cursor.execute(query)
        cursor.execute('commit') # sqldeveloper에 커밋
        
        
        # Product Img
        
        img1 = xml["mainImgUrl1"] # main img
        img2 = xml["lightImgUrl1"] # 배치전
        img3 = xml["lightImgUrl2"] # 6개월 후 발코니 창측
        
        query = f" insert into MORANMORAN.PRODUCT_IMG  values ({no}, 0, '{img1}') "
        cursor.execute(query)
        query = f" insert into MORANMORAN.PRODUCT_IMG  values ({no}, 1, '{img2}') "
        cursor.execute(query)
        query = f" insert into MORANMORAN.PRODUCT_IMG  values ({no}, 2, '{img3}') "
        cursor.execute(query)
        
        cursor.execute('commit') # sqldeveloper에 커밋
        
        print("이미지 저장완료 \n")
        print()
        
    cursor.close()
    con.close()

except Exception as e:
    print(e)