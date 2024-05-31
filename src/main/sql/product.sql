use MORANMORAN;

select * from MORANMORAN.PRODUCT LIMIT 0, 10;
select * from MORANMORAN.PRODUCT LIMIT 10, 10;
select * from MORANMORAN.PRODUCT LIMIT 20, 10;
select * from MORANMORAN.PRODUCT LIMIT 30, 10;
select * from MORANMORAN.PRODdeptdeptdeptUCT LIMIT 40, 10;

select * from MORANMORAN.PRODUCT order by pd_id;

-- 전체 이미지 조회
select * from MORANMORAN.PRODUCT_IMG
where pd_id in (select pd_id from MORANMORAN.PRODUCT);

-- 상품, 상품이미지 join으로 조회
select * from MORANMORAN.PRODUCT as pd
	join MORANMORAN.PRODUCT_IMG as pdi
    on pd.pd_id = pdi.pd_id;
    
-- 상품 조회
select 	pd_id id,
        c_id cId,
        pd_name name,
        pd_price price,
        pd_description description,
        pd_quantity quantity,
        pd_wholesale wholesals,
        pd_dcRate dcRate,
        pd_is_maintain isMaintain,
        pd_retention_period retetionDate
from MORANMORAN.PRODUCT;

-- img 조회
select pd_id as id, pi_no as no, pi_img as img
from MORANMORAN.PRODUCT_IMG
where pd_id = 12938 and pi_no = 0;

-- 상품, 대표이미지 join 조회
select p.pd_id, pi_img
from PRODUCT p join PRODUCT_IMG pi
    on p.pd_id = pi.pd_id
where pi_img = 0;

-- 전체 상품 종류 수
select count(*) from PRODUCT;

-- 생성일 조회
SELECT pd_id, pd_created_at FROM PRODUCT;

-- 주문자 순
select * from PRODUCT where pd_id in
( select pd_id from (
        SELECT pd_id, COUNT(*) as hit
        FROM ORDERS
        WHERE pd_id IN (SELECT pd_id FROM PRODUCT)
        GROUP BY pd_id
        ORDER BY hit desc
        LIMIT 0, 12
    ) as pop
);

-- 주문자 수, 상품id 조회
SELECT pd_id, COUNT(*) as hit
FROM ORDERS
WHERE pd_id IN (SELECT pd_id FROM PRODUCT)
GROUP BY pd_id
ORDER BY hit desc
LIMIT 0, 12;

-- 인기상품 종류 수
select count(*) 
from (
    SELECT COUNT(*) as hit
    FROM ORDERS
    WHERE pd_id IN (SELECT pd_id FROM PRODUCT)
    GROUP BY pd_id
) as pop;

-- 생성 순서 조회
select * from PRODUCT
order by pd_created_at desc
LIMIT 0, 12;

-- 날짜 계산 테스트
select date(now() - pd_created_at, '%Y%m%d') from PRODUCT
order by pd_created_at desc
where pd_id = 12938;

-- 상품, 주문자 join 조회
select * from PRODUCT p join ORDERS o on p.pd_id = o.pd_id;
-- 주문자 주회
select * from ORDERS where pd_id = 204869;

-- 카테고리 조회
select 	pd_id as pId,
        c_id as cId,
        pd_name as name,
        pd_price as price,
        pd_description as description,
        pd_quantity as quantity,
        pd_wholesale as wholesale,
        pd_dcRate as dcRate,
        pd_created_at as createDate,
        pd_is_maintain as isMaintain,
        pd_retention_period as retetionDate
from MORANMORAN.PRODUCT
where c_id = 1
ORDER BY pd_id
LIMIT 0, 12;

select count(*)
from MORANMORAN.PRODUCT
where pd_is_maintain = 0;

select count(*)
from (
    SELECT COUNT(*) as hit
    FROM ORDERS
    WHERE pd_id IN (SELECT pd_id FROM PRODUCT 
                    where pd_is_maintain = 0) 
    GROUP BY pd_id
) as pop;

select * from PRODUCT;

select pd_id from PRODUCT order by 1 desc LIMIT 0, 1;


select * from PRODUCT where pd_id = 204880;

select 	pd_id as pId,
        c_id as cId,
        pd_name as name,
        pd_price as price,
        pd_description as description,
        pd_quantity as quantity,
        pd_wholesale as wholesale,
        pd_dcRate as dcRate,
        pd_created_at as createDate,
        pd_is_maintain as isMaintain,
        pd_retention_period as retetionDate
from MORANMORAN.PRODUCT
where pd_is_maintain = 0 and pd_id = 204880;

select 	pd_id as pId,
        c_id as cId,
        pd_name as name,
        pd_price as price,
        pd_description as description,
        pd_quantity as quantity,
        pd_wholesale as wholesale,
        pd_dcRate as dcRate,
        pd_created_at as createDate,
        pd_is_maintain as isMaintain,
        pd_retention_period as retetionDate
from MORANMORAN.PRODUCT
where pd_is_maintain = 1
order by pd_retention_period desc
;

SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH);

-- test insert --
INSERT INTO MORANMORAN.PRODUCT (
    c_id, pd_name, pd_price, pd_description,
    pd_quantity, pd_wholesale, pd_dcrate, pd_created_at,
    pd_is_maintain, pd_retention_period)
VALUES (1, '몰라', 100, '대충 내용', 100, 100, 10, '2024-05-01', 0, null);

insert into PRODUCT_IMG (pd_id, pi_no, pi_img)
values(, , );

insert into PRODUCT_IMG values(204876, 0, 'product_Img/clover.jpg');

commit;

-- update
update PRODUCT_IMG set pi_img = 'product_Img/clover.jpg' where pi_no = 1;
update PRODUCT
set pd_is_maintain = 1,
    pd_retention_period = (SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH))
where pd_id

-- ※ delete --
delete from ORDERS where pd_id in (13206, 14687, 204838, 13339, 12966,
204869, 204860, 14697, 12974, 204827);
--13206
--14687
--204838
--13339
--12966
--204869
--204860
--14697
--12974
--204827


delete from PRODUCT where pd_id = 204879;

delete from PRODUCT where pd_id in (204881, 204882);

delete from PRODUCT where pd_id = 1;


