-- 실내식물
insert into MORANMORAN.CATEGORY values(1, null, '직립형');
insert into MORANMORAN.CATEGORY values(2, null, '관목형');
insert into MORANMORAN.CATEGORY values(3, null, '덩굴성');
insert into MORANMORAN.CATEGORY values(4, null, '풀모양');
insert into MORANMORAN.CATEGORY values(5, null, '로제트형');
insert into MORANMORAN.CATEGORY values(6, null, '다육형');

-- 건조 식물
-- 직립형, 로제트형 포함
insert into MORANMORAN.CATEGORY values(7, null, '포도송이형');
insert into MORANMORAN.CATEGORY values(8, null, '군생형');
insert into MORANMORAN.CATEGORY values(9, null, '관목형');
insert into MORANMORAN.CATEGORY values(10, null, '포복형');
insert into MORANMORAN.CATEGORY values(11, null, '불규칙형');
insert into MORANMORAN.CATEGORY values(12, null, '탑형');

use MORANMORAN;

-- select
select * from MORANMORAN.CATEGORY;
select * from CATEGORY
where c_parent_id is null;


-- update
update MORANMORAN.CATEGORY set c_parent_id = 0 where c_id = 1;

