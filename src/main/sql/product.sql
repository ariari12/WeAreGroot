use MORANMORAN;

select * from MORANMORAN.PRODUCT LIMIT 0, 10;
select * from MORANMORAN.PRODUCT LIMIT 10, 10;
select * from MORANMORAN.PRODUCT LIMIT 20, 10;
select * from MORANMORAN.PRODUCT LIMIT 30, 10;
select * from MORANMORAN.PRODdeptdeptdeptUCT LIMIT 40, 10;

select * from MORANMORAN.PRODUCT order by pd_id;


select * from MORANMORAN.PRODUCT order by pd_id;

select * from MORANMORAN.PRODUCT_IMG
where pd_id = (select pd_id from MORANMORAN.PRODUCT);

select * from MORANMORAN.PRODUCT as pd
	join MORANMORAN.PRODUCT_IMG as pdi
    on pd.pd_id = pdi.pd_id;
    
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

select pd_id as id, pi_no no, pi_img img
from MORANMORAN.PRODUCT_IMG where pd_id = 12938 and pi_no = 0;

select p.pd_id, pi_img
from PRODUCT p join PRODUCT_IMG pi
    on p.pd_id = pi.pd_id
where pi_img = 0;

select count(*) from PRODUCT;

SELECT pd_id, pd_created_at FROM PRODUCT;

select * from PRODUCT where pd_id in
( select pd_id from (
        SELECT pd_id, COUNT(*) as hit
        FROM ORDERS
        WHERE pd_id IN (SELECT pd_id FROM PRODUCT)
        GROUP BY pd_id
        ORDER BY hit LIMIT 0, 12
    ) as pop
);

select * from PRODUCT
order by pd_created_at desc
LIMIT 90, 12;

select * from PRODUCT p join ORDERS o on p.pd_id = o.pd_id;
select * from ORDERS where pd_id = 204869;

-- test insert
INSERT INTO MORANMORAN.PRODUCT (
    pd_id, c_id, pd_name, pd_price, pd_description,
    pd_quantity, pd_wholesale, pd_dcrate, pd_created_at,
    pd_is_maintain, pd_retention_period)
VALUES (1, 1, '몰라', 100, '대충 내용', 100, 100, 10, '2024-05-01', 0, null);

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

delete from PRODUCT where pd_id = 1;

