select * from ORDERS;

INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, 
o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail) VALUES
(1, 13206, '2024-05-01', 150.00, 3, 0, 
'uuid1', 'John Doe', '010-1234-5678', '12345', '123 Main St', 'Apt 1'),
(2, 14687, '2024-05-02', 250.00, 5, 0,
'uuid2', 'Jane Smith', '010-2345-6789', '23456', '456 Elm St', 'Apt 2'),
(3, 204838, '2024-05-03', 100.00, 2, 0,
'uuid3', 'Alice Johnson', '010-3456-7890', '34567', '789 Oak St', 'Apt 3'),
(4, 13339, '2024-05-04', 200.00, 4, 0,
'uuid4', 'Bob Brown', '010-4567-8901', '45678', '101 Pine St', 'Apt 4'),
(5, 12966, '2024-05-05', 300.00, 6, 0,
'uuid5', 'Charlie Davis', '010-5678-9012', '56789', '202 Maple St', 'Apt 5'),
(6, 12963, '2024-05-06', 175.00, 3, 0,
'uuid6', 'Daisy Evans', '010-6789-0123', '67890', '303 Birch St', 'Apt 6'),
(7, 12966, '2024-05-07', 225.00, 4, 0,
'uuid7', 'Eve Foster', '010-7890-1234', '78901', '404 Cedar St', 'Apt 7'),
(8, 204869, '2024-05-08', 125.00, 2, 0,
'uuid8', 'Frank Green', '010-8901-2345', '89012', '505 Spruce St', 'Apt 8'),
(9, 204860, '2024-05-09', 275.00, 5, 0,
'uuid9', 'Grace Hall', '010-9012-3456', '90123', '606 Willow St', 'Apt 9'),
(10, 14697, '2024-05-10', 350.00, 7, 0,
'uuid10', 'Henry Ives', '010-0123-4567', '01234', '707 Ash St', 'Apt 10'),
(1, 12974, '2024-05-11', 150.00, 3, 0,
'uuid1', 'John Doe', '010-1234-5678', '12345', '123 Main St', 'Apt 1'),
(3, 204827, '2024-05-12', 150.00, 3, 0,
'uuid2', 'Jane Smith', '010-2345-6789', '23456', '456 Elm St', 'Apt 2');

-- review 테스트 용도
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (1, 12938, '2024-05-01', 6319280, 10, 3, 'uuid1', 'John Doe', '010-1234-5678', '12345', '123 Main St', 'Apt 1');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (2, 12954, '2024-05-02', 9954660, 30, 2, 'uuid2', 'Jane Smith', '010-2345-6789', '23456', '456 Elm St', 'Apt 2');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (3, 12955, '2024-05-03', 626425, 25, 4, 'uuid3', 'Alice Johnson', '010-3456-7890', '34567', '789 Oak St', 'Apt 3');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (4, 12957, '2024-05-04', 1323494, 2, 5, 'uuid4', 'Bob Brown', '010-4567-8901', '45678', '101 Pine St', 'Apt 4');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (5, 12938, '2024-05-05', 1263856, 2, 1, 'uuid5', 'Charlie Davis', '010-5678-9012', '56789', '202 Maple St', 'Apt 5');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (6, 12954, '2024-05-06', 9954660, 30, 4, 'uuid6', 'Daisy Evans', '010-6789-0123', '67890', '303 Birch St', 'Apt 6');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (7, 12955, '2024-05-07', 175399, 7, 3, 'uuid7', 'Eve Foster', '010-7890-1234', '78901', '404 Cedar St', 'Apt 7');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (8, 12957, '2024-05-08', 1985241, 3, 2, 'uuid8', 'Frank Green', '010-8901-2345', '89012', '505 Spruce St', 'Apt 8');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (9, 12938, '2024-05-09', 631928, 1, 1, 'uuid9', 'Grace Hall', '010-9012-3456', '90123', '606 Willow St', 'Apt 9');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (10, 12954, '2024-05-10', 1327288, 4, 5, 'uuid10', 'Henry Ives', '010-0123-4567', '01234', '707 Ash St', 'Apt 10');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (1, 12955, '2024-05-11', 2004560, 80, 3, 'uuid1', 'John Doe', '010-1234-5678', '12345', '123 Main St', 'Apt 1');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (2, 12957, '2024-05-12', 1323494, 2, 4, 'uuid2', 'Jane Smith', '010-2345-6789', '23456', '456 Elm St', 'Apt 2');
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status, o_uuid, o_name, o_phone, o_zipcode, o_address, o_addrDetail)
VALUES (3, 12938, '2024-05-13', 12638560, 20, 1, 'uuid3', 'Alice Johnson', '010-3456-7890', '34567', '789 Oak St', 'Apt 3');


commit;


13206
14687
204838
13339
12966
204869
204860
14697
12974
204827

delete from ORDERS where o_id in (
71,
72,
73,
74,
75,
76,
77,
78,
79,
80,
81,
82,
83,
84
);