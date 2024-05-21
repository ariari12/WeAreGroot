import pyodbc

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

query = f"""
    INSERT INTO MORANMORAN.PRODUCT (
        pd_id, c_id, pd_name, pd_price, pd_description, 
        pd_quantity, pd_wholesale, pd_dcrate,
        pd_is_maintain, pd_retention_period)
    VALUES (0, 1, '0', 0, '0', 0, 0, 0, 0, NULL)
"""
cursor.execute(query)
cursor.execute('commit') # sqldeveloper에 커밋