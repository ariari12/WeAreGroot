SELECT 
    r.r_id as rId, 
    r.m_id as mId, 
    r.o_id as oId, 
    r.r_contents as contents,
    r.r_regdate as regDate, 
    r.r_score as score, 
    r.r_is_maintain as isMaintain, 
    r.r_retention_period as retentionPeriod,
    ri.ri_img as riImg
FROM REVIEW r 
JOIN ORDERS o ON r.o_id = o.o_id
JOIN PRODUCT p ON o.pd_id = p.pd_id
JOIN REVIEW_IMG ri ON ri.r_id = r.r_id
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
