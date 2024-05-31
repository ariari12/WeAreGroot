import requests
from bs4 import BeautifulSoup
import xmltodict
import time
import pandas as pd 

result_data = []

try:
    # 데이터 입력
    rows = '999'
    url = 'http://api.nongsaro.go.kr/service/garden/'
    key = '20240513TIQYSE6AZKGZBGVUJMZFFW'
    ListType = 'gardenList?'

    url = f'http://api.nongsaro.go.kr/service/garden/{ListType}'
    api_key = f'apiKey={key}'
    numOfRows = f'&numOfRows={rows}'

    r = requests.get(
        url = url + api_key + numOfRows
    )

    data = BeautifulSoup(r.text, 'lxml-xml')

    cntntsNo = data.find_all('cntntsNo')
    cntntsSj = data.find_all('cntntsSj')

    for index, (i, j) in enumerate(zip(cntntsNo, cntntsSj)):
        # print(f'{i.text} : {j.text}')
        time.sleep(0.1)

        r = requests.post(
        'http://api.nongsaro.go.kr/service/garden/gardenDtl',
        data={
            "apiKey": key,
            "cntntsNo": i.text
            }
        )
        data_dict = xmltodict.parse(r.text)
        d = pd.DataFrame(data_dict['response']['body']['item'], index=[index])
        result_data.append(d)

    df = pd.concat(result_data, ignore_index=True)
    df.to_csv('data.csv')

except Exception as e:
    print(e)


    