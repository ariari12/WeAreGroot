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
    
select * from xe.dept;

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

delete from PRODUCT where pd_id > 50;
