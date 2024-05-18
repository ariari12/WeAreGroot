import requests
from bs4 import BeautifulSoup
import xml.etree.ElementTree as ET
import time

try:
    rows = '300'
    # url = 'http://api.nongsaro.go.kr/service/garden/'
    key = '20240513TIQYSE6AZKGZBGVUJMZFFW'
    list_type = 'gardenList?'

    url = f'http://api.nongsaro.go.kr/service/garden/{list_type}'
    api_key = f'apiKey={key}'
    num_of_rows = f'&numOfRows={rows}'

    data = BeautifulSoup(requests.get(url + api_key + num_of_rows).text,
                        'lxml-xml')
    
    cntnts_no = data.find_all('cntntsNo')
    cntnts_sj = data.find_all('cntntsSj')
    imgs = data.find_all('rtnFileUrl')
    
    print(cntnts_no)
    print(cntnts_sj)
    print(imgs)

    for i, j, k in zip(cntnts_no, cntnts_sj, imgs):
        no = i.text
        name = j.text
        img = k.text
        print(no, end=": ")
        print(name)
        print("[")
        for url in img.split("|"):
            print(url)
        print("]")
        
    #     # time.sleep(0.1)

except Exception as e:
    print(e)