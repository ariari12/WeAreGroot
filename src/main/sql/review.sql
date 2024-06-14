SELECT 
    r.r_id as rId, 
    r.m_id as mId, 
    r.o_id as oId, 
    r.r_contents as contents,
    r.r_regdate as regDate, 
    r.r_score as score, 
    r.r_is_maintain as isMaintain, 
    r.r_retention_period as retentionPeriod
FROM REVIEW r 
JOIN ORDERS o ON r.o_id = o.o_id
JOIN PRODUCT p ON o.pd_id = p.pd_id
WHERE p.pd_id = 14697 AND r.r_is_maintain = 0
ORDER BY r_regdate DESC;


select count(*)
from (
    select * from REVIEW
    where o_id in (
        select o_id from ORDERS
        where pd_id = 14697
    )
) as pd_rv;

select avg(r_score), count(*)
from REVIEW
where o_id in (
    select o_id from ORDERS
    where pd_id = 14697
)
;

SELECT 
    r_id as rId, 
    m_id as mId, 
    o_id as oId, 
    r_contents as contents,
    r_regdate as regDate, 
    r_score as score, 
    r_is_maintain as isMaintain, 
    r_retention_period as retentionPeriod,
from REVIEW
where o_id in (
    select o_id from ORDERS
    where pd_id = 14697
)
desc
;

select * from REVIEW_IMG;

-- commit
commit;

-- order id 1~69
insert into REVIEW(m_id, o_id, r_contents, r_regdate, r_score)
values();


select * from REVIEW;
select * from REVIEW_IMG;
select * from PRODUCT;
select * from ORDERS;
select * from ORDERS where pd_id = 12938;

ALTER TABLE REVIEW AUTO_INCREMENT = 1;

-- review insert 
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (1, 1, '정말 훌륭한 제품입니다. 다시 구매할 의향이 있어요!', '2024-05-20', 5, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (2, 2, '가격 대비 품질이 좋습니다. 추천합니다.', '2024-05-21', 5, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (3, 3, '기대 이상으로 만족스러웠어요. 배송도 빨랐습니다!', '2024-05-22', 5, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (7, 7, '평범한 제품이었어요. 특별한 점은 없었습니다.', '2024-05-23', 2, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (8, 8, '서비스가 아주 좋았습니다. 다음에도 이용할게요!', '2024-05-24', 4, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (9, 9, '제품이 마음에 들지 않았습니다. 다시는 구매하지 않을 것 같아요.', '2024-05-25', 0, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (10, 10, '제품의 품질이 매우 훌륭합니다. 처음 사용해보았을 때부터 만족스러웠고, 지금까지도 잘 사용하고 있습니다. 배송도 빠르고 포장도 꼼꼼하게 되어 있어 기분 좋게 받았습니다. 앞으로도 자주 이용할 것 같아요. 추천드립니다.', '2024-05-26', 4, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (1, 13, '포장이 너무 허술해서 실망했습니다!', '2024-05-27', 1, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (2, 14, '처음 구매할 때는 조금 망설였지만, 받아보니 기대 이상이었습니다. 특히 디자인이 마음에 들었고, 사용감도 아주 좋습니다. 고객 서비스도 친절하고 신속하게 대응해 주셔서 기분이 좋았습니다. 친구들에게도 추천할게요.', '2024-05-28', 5, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (3, 25, '상품이 제 시간에 도착하지 않아서 불편했지만, 제품 자체는 매우 만족스럽습니다. 품질이 좋아서 오래 사용할 수 있을 것 같습니다. 고객 서비스도 친절해서 다음에도 여기서 구매할 계획입니다', '2024-05-20', 5, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (7, 19, '기대 이상으로 좋았어요. 매우 만족합니다.', '2024-05-21', 5, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (8, 20, '처음부터 문제가 많았습니다. 제품이 제대로 작동하지 않고, 몇 번 사용하자마자 고장났습니다. AS를 신청했지만, 대응이 느리고 친절하지 않았습니다. 이번 경험으로 인해 다시는 여기서 구매하지 않을 것 같습니다.', '2024-05-22', 0, 0);
INSERT INTO REVIEW (m_id, o_id, r_contents, r_regdate, r_score, r_is_maintain)
    VALUES (9, 21, '품질이 좋고, 사용하기 편리합니다. 추천해요.', '2024-05-23', 2, 0);


-- REVIEW_IMG inse
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (1, 0, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (2, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (2, 2, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (3, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (3, 1, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (3, 2, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (4, 0, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (5, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (5, 1, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (6, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (6, 1, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (7, 0, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (9, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (9, 1, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (9, 2, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (10, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (10, 1, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (12, 0, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (12, 1, ' ');
INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (12, 2, ' ');

INSERT INTO REVIEW_IMG (r_id, ri_no, ri_img) VALUES (13, 0, ' ');

commit;

-- update
update REVIEW set r_is_maintain = 0 where r_is_maintain is null;

-- delete
delete from REVIEW where r_id > 0;
delete from REVIEW_IMG where r_id > 0;
