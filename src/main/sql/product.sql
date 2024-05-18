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