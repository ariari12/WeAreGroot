SELECT * FROM MORANMORAN.MEMBER;

-- admin acount
insert into MORANMORAN.MEMBER(m_id, m_email, m_pw, m_name, m_admintype, m_is_maintain)
values(-1, 'a@a.a', 'aaaaaa', 'admin', 1, 0);

delete from MORANMORAN.MEMBER where m_id = -1;


-- user acount
INSERT INTO MEMBER (m_email, m_pw, m_name, m_nick, m_phone, m_regdate, m_logtype, m_admintype, m_is_maintain, m_birth, m_gender) VALUES 
('user1@example.com', 123456, 'user1', 'user1', '010-1234-5678', now(), 0, 0, 0, '1990-01-01', 'male'),
('user2@example.com', 123457, 'user2', 'user2', '010-1234-5678', now(), 1, 0, 0, '1991-02-15', 'female'),
('user3@example.com', 123458, 'user3', 'user3', '010-1234-5678', now(), 2, 0, 0, '1992-03-20', 'male'),
('user4@example.com', 123459, 'user4', 'user4', '010-1234-5678', now(), 0, 0, 0, '1993-04-25', 'female'),
('user5@example.com', 123460, 'user5', 'user5', '010-1234-5678', now(), 1, 0, 0, '1994-05-30', 'male'),
('user6@example.com', 123461, 'user6', 'user6', '010-1234-5678', now(), 2, 0, 0, '1995-06-10', 'female'),
('user7@example.com', 123462, 'user7', 'user7', '010-1234-5678', now(), 0, 0, 0, '1996-07-15', 'male'),
('user8@example.com', 123463, 'user8', 'user8', '010-1234-5678', now(), 1, 0, 0, '1997-08-20', 'female'),
('user9@example.com', 123464, 'user9', 'user9', '010-1234-5678', now(), 2, 0, 0, '1998-09-25', 'male'),
('user10@example.com', 123465, 'user10', 'user10', '010-1234-5678', now(), 0, 0, 0, '1999-10-30', 'female');

select now() from dual;

delete from MEMBER where m_id > 0;
ALTER TABLE MEMBER AUTO_INCREMENT = 1;
commit;