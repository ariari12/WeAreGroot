select * from ORDERS;

INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (1, 13206, '2024-05-01', 150.00, 3, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (2, 14687, '2024-05-02', 250.00, 5, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (3, 204838, '2024-05-03', 100.00, 2, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status)
VALUES (4, 13339, '2024-05-04', 200.00, 4, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (5, 12966, '2024-05-05', 300.00, 6, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status)
VALUES (6, 12963, '2024-05-06', 175.00, 3, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (7, 12966, '2024-05-07', 225.00, 4, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (8, 204869, '2024-05-08', 125.00, 2, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (9, 204860, '2024-05-09', 275.00, 5, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (10, 14697, '2024-05-10', 350.00, 7, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status)
VALUES(1, 12974, '2024-05-11', 150.00, 3, 0);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status)
VALUES(1, 204827, '2024-05-12', 150.00, 3, 0);

-- review 테스트 용도
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUES (1, 12938, '2024-05-01', 6319280, 10, 3);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (2, 12954, '2024-05-02', 9954660, 30, 2);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (3, 12955, '2024-05-03', 626425, 25, 4);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (4, 12957, '2024-05-04', 1323494, 2, 5);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (5, 12938, '2024-05-05', 1263856, 2, 1);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (6, 12954, '2024-05-06', 9954660, 30, 4);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (7, 12955, '2024-05-07', 175399, 7, 3);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (8, 12957, '2024-05-08', 1985241, 3, 2);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (9, 12938, '2024-05-09', 631928, 1, 1);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (10, 12954, '2024-05-10', 1327288, 4, 5);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (1, 12955, '2024-05-11', 2004560, 80, 3);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (2, 12957, '2024-05-12', 1323494, 2, 4);
INSERT INTO ORDERS (m_id, pd_id, o_date, o_total, o_cnt, o_status) 
VALUE (3, 12938, '2024-05-13', 12638560, 20, 1);
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