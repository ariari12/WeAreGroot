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


-- 하위 카테고리 테스트
insert into MORANMORAN.CATEGORY values(101, 1, '하위1');
insert into MORANMORAN.CATEGORY values(102, 1, '하위2');
insert into MORANMORAN.CATEGORY values(103, 1, '하위3');
insert into MORANMORAN.CATEGORY values(104, 1, '하위4');

insert into MORANMORAN.CATEGORY(c_parent_id, c_name)
values(null, '탑형');


use MORANMORAN;

-- select
select * from MORANMORAN.CATEGORY;
select * from CATEGORY
where c_parent_id is null;


-- update
update MORANMORAN.CATEGORY set c_name = '직립형' where c_id = 1;

-- delete
delete from CATEGORY where c_id = 105;

delete from CATEGORY where c_id = 8;

-- member
insert into MEMBER(MEMBER.m_email, MEMBER.m_pw, MEMBER.m_admintype)
values('a', 'pw', 1);