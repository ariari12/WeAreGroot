-- 외래 키 제약 조건에 따라 테이블을 삭제하는 순서
-- 후기 이미지
DROP TABLE IF EXISTS `MORANMORAN`.`REVIEW_IMG` RESTRICT;
-- 상품 문의 이미지
DROP TABLE IF EXISTS `MORANMORAN`.`PRODUCT_QA_IMG` RESTRICT;
-- 상품 이미지
DROP TABLE IF EXISTS `MORANMORAN`.`PRODUCT_IMG` RESTRICT;
-- 이벤트 이미지
DROP TABLE IF EXISTS `MORANMORAN`.`EVENT_IMG` RESTRICT;

-- 회원 찜
DROP TABLE IF EXISTS `MORANMORAN`.`MEMBER_KEEP` RESTRICT;
-- 장바구니
DROP TABLE IF EXISTS `MORANMORAN`.`MEMBER_CART` RESTRICT;

-- 이벤트
DROP TABLE IF EXISTS `MORANMORAN`.`EVENT` RESTRICT;
-- 후기
DROP TABLE IF EXISTS `MORANMORAN`.`REVIEW` RESTRICT;
-- 주문 취소
DROP TABLE IF EXISTS `MORANMORAN`.`ORDER_CANCEL` RESTRICT;
-- 주문
DROP TABLE IF EXISTS `MORANMORAN`.`ORDERS` RESTRICT;

-- 좋아요
DROP TABLE IF EXISTS `MORANMORAN`.`LIKES` RESTRICT;
-- 댓글
DROP TABLE IF EXISTS `MORANMORAN`.`COMMENT` RESTRICT;
-- 게시판
DROP TABLE IF EXISTS `MORANMORAN`.`BOARD` RESTRICT;

-- 상품 문의
DROP TABLE IF EXISTS `MORANMORAN`.`PRODUCT_QA` RESTRICT;
-- 문의구분
DROP TABLE IF EXISTS `MORANMORAN`.`CATEGORY_QA` RESTRICT;
-- 상품
DROP TABLE IF EXISTS `MORANMORAN`.`PRODUCT` RESTRICT;
-- 카테고리
DROP TABLE IF EXISTS `MORANMORAN`.`CATEGORY` RESTRICT;

-- 배송지
DROP TABLE IF EXISTS `MORANMORAN`.`ADDRES` RESTRICT;
-- 탈퇴사유
DROP TABLE IF EXISTS `MORANMORAN`.`LEAVE` RESTRICT;
-- 회원
DROP TABLE IF EXISTS `MORANMORAN`.`MEMBER` RESTRICT;

-- 내 스키마
-- CREATE SCHEMA `MORANMORAN`;

-- 회원
CREATE TABLE `MORANMORAN`.`MEMBER` (
    `m_id`               INT  AUTO_INCREMENT, -- 회원번호
    `m_email`            VARCHAR(255) NULL, -- 이메일
    `m_pw`               VARCHAR(255) NULL, -- 비밀번호
    `m_name`             VARCHAR(255) NULL, -- 이름
    `m_profile_img`      TEXT NULL, -- 프로필이미지
    `m_nick`             VARCHAR(255) NULL, -- 닉네임
    `m_phone`            VARCHAR(255) NULL, -- 전화번호
    `m_regdate`          DATE NULL, -- 가입일자
    `m_logtype`          INT  NULL, -- 로그인타입
    `m_admintype`        INT  NULL, -- 회원레벨
    `m_is_maintain`      INT  NULL, -- 정보상태
    `m_retention_period` DATE NULL, -- 정보보관기간
    `m_birth` DATE NULL, -- 생일
    PRIMARY KEY (`m_id`)
);
-- 배송지
CREATE TABLE `MORANMORAN`.`ADDRES` (
    `a_id`      INT  AUTO_INCREMENT, -- 배송지 번호
    `m_id`      INT  NULL, -- 회원번호
    `a_zipcode` VARCHAR(255) NULL, -- 우편번호
    `a_addr1`   VARCHAR(255) NULL, -- 주소
    `a_addr2`   VARCHAR(255) NULL, -- 상세주소
    PRIMARY KEY (`a_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE
);
-- 탈퇴사유
CREATE TABLE `MORANMORAN`.`LEAVE` (
	`m_id`      INT          NULL, -- 회원번호
	`l_reason` VARCHAR(255) NULL, -- 회원탈퇴사유
	`l_date`   DATE         NULL,  -- 회원탈퇴날짜
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE
);

-- 카테고리
CREATE TABLE `MORANMORAN`.`CATEGORY` (
    `c_id`   INT  AUTO_INCREMENT, -- 카테고리 번호
    `c_parent_id`   INT, -- 카테고리 번호
    `c_name` VARCHAR(255) NULL, -- 카테고리 이름
    PRIMARY KEY (`c_id`),
    FOREIGN KEY (`c_parent_id`) REFERENCES `MORANMORAN`.`CATEGORY` (`c_id`) ON DELETE CASCADE
);
-- 상품
CREATE TABLE `MORANMORAN`.`PRODUCT` (
    `pd_id`               INT  AUTO_INCREMENT, -- 상품번호
    `c_id`                INT  NULL, -- 카테고리 번호
    `pd_name`             VARCHAR(255) NULL, -- 상품이름
    `pd_price`            INT  NULL, -- 가격
    `pd_description`      TEXT NULL, -- 설명
    `pd_quantity`         INT  NULL, -- 재고량
    `pd_wholesale`        INT  NULL, -- 상품 도매가
    `pd_dcrate`           INT  NULL, -- 상품 할인률
    `pd_created_at`         DATE NULL, -- 상품 등록일
    `pd_is_maintain`      INT  NULL, -- 정보상태
    `pd_retention_period` DATE NULL, -- 정보보관기간
    PRIMARY KEY (`pd_id`),
    FOREIGN KEY (`c_id`) REFERENCES `MORANMORAN`.`CATEGORY` (`c_id`) ON DELETE CASCADE
);
-- 상품 이미지
CREATE TABLE `MORANMORAN`.`PRODUCT_IMG` (
    `pd_id`  INT  NULL, -- 상품번호
    `pi_no`  INT  NULL, -- 이미지 순서번호
    `pi_img` TEXT NULL, -- 상품이미지
    FOREIGN KEY (`pd_id`) REFERENCES `MORANMORAN`.`PRODUCT` (`pd_id`) ON DELETE CASCADE
);

-- 이벤트
CREATE TABLE `MORANMORAN`.`EVENT` (
    `e_id`               INT  AUTO_INCREMENT, -- 이벤트 번호
    `m_id`               INT  NULL, -- 회원번호
    `pd_id`				 INT  NULL, -- 상품번호
    `e_title`            VARCHAR(255) NULL, -- 이벤트 설명
    `e_contents`         VARCHAR(255) NULL, -- 이벤트 내용
    `e_writedate`        DATE NULL, -- 작성일
    `e_start`       	 DATE NULL, -- 시작일
    `e_end`         	 DATE NULL, -- 종료일
    `e_is_maintain`      INT  NULL, -- 정보상태
    `e_retention_period` DATE NULL, -- 정보보관기간
    PRIMARY KEY (`e_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
	FOREIGN KEY (`pd_id`) REFERENCES `MORANMORAN`.`PRODUCT` (`pd_id`) ON DELETE CASCADE
);
-- 이벤트 이미지
CREATE TABLE `MORANMORAN`.`EVENT_IMG` (
    `e_id`   INT  NULL, -- 이벤트 번호
    `ei_no`  INT  NULL, -- 이미지 순서번호
    `ei_img` TEXT NULL, -- 이미지
    FOREIGN KEY (`e_id`) REFERENCES `MORANMORAN`.`EVENT` (`e_id`) ON DELETE CASCADE
);

-- 카테고리 문의
CREATE TABLE `MORANMORAN`.`CATEGORY_QA` (
    `cqa_id`   INT  AUTO_INCREMENT, -- 문의 구분 번호
    `cqa_name` VARCHAR(255) NULL, -- 문의 구분 이름
    PRIMARY KEY (`cqa_id`)
);
-- 상품 문의
CREATE TABLE `MORANMORAN`.`PRODUCT_QA` (
    `pqa_id`               INT  AUTO_INCREMENT, -- 문의 번호
    `pqa_parent_id`        INT  NULL, -- 문의 부모 번호
    `m_id`                 INT  NULL, -- 회원번호
    `pd_id`                INT  NULL, -- 상품번호
    `pqa_title`            VARCHAR(255) NULL, -- 제목
    `pqa_contents`         VARCHAR(255) NULL, -- 내용
    `pqa_regdate`          DATE NULL, -- 작성일
    `pqa_type`             INT  NULL, -- 문의 타입
    `cqa_id`               INT  NULL, -- 문의 구분 번호
    `pqa_is_maintain`      INT  NULL, -- 정보상태
    `pqa_retention_period` DATE NULL, -- 정보보관기간
    PRIMARY KEY (`pqa_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`pd_id`) REFERENCES `MORANMORAN`.`PRODUCT` (`pd_id`) ON DELETE CASCADE,
    FOREIGN KEY (`cqa_id`) REFERENCES `MORANMORAN`.`CATEGORY_QA` (`cqa_id`) ON DELETE CASCADE,
    FOREIGN KEY (`pqa_parent_id`) REFERENCES `MORANMORAN`.`PRODUCT_QA` (`pqa_id`) ON DELETE CASCADE
);
-- 상품 문의 이미지
CREATE TABLE `MORANMORAN`.`PRODUCT_QA_IMG` (
	`pqa_id`   INT  NULL, -- 문의 번호
	`pqai_img` TEXT NULL,  -- 문의 이미지
    FOREIGN KEY (`pqa_id`) REFERENCES `MORANMORAN`.`PRODUCT_QA` (`pqa_id`) ON DELETE CASCADE
);

-- 게시판
CREATE TABLE `MORANMORAN`.`BOARD` (
    `b_id`               INT  AUTO_INCREMENT, -- 게시판 번호
    `m_id`               INT  NOT NULL, -- 회원번호
    `b_title`            VARCHAR(255) NULL, -- 제목
    `b_contents`         VARCHAR(255) NULL, -- 내용
    `b_regdate`          DATE NULL, -- 작성일
    `b_view_cnt`         INT  NULL, -- 조회수
    `b_like_cnt`         INT  NULL, -- 좋아요 수
    `b_type`             INT  NULL, -- 
    `b_is_maintain`      INT  NULL, -- 정보상태
    `b_retention_period` DATE NULL, -- 정보보관기간
    PRIMARY KEY (`b_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE
);
-- 댓글
CREATE TABLE `MORANMORAN`.`COMMENT` (
    `c_id`       	INT  AUTO_INCREMENT, -- 댓글 번호
    `m_id`       	INT  NULL, -- 회원번호
    `b_id`       	INT  NULL, -- 게시판 번호
    `c_parent_id`   INT  NULL, -- 댓글 부모 번호
    `c_contents`    VARCHAR(255)  NULL, -- 댓글 내용
    `c_regdate`     DATE  NULL, -- 댓글 작성일
    `c_like_cnt`    INT  NULL, -- 댓글 좋아요 수
    PRIMARY KEY (`c_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`b_id`) REFERENCES `MORANMORAN`.`BOARD` (`b_id`) ON DELETE CASCADE,
    FOREIGN KEY (`c_parent_id`) REFERENCES `MORANMORAN`.`COMMENT` (`c_id`) ON DELETE CASCADE
);
-- 좋아요
CREATE TABLE `MORANMORAN`.`LIKES` (
    `l_id`   INT  AUTO_INCREMENT, -- 좋아요 번호
    `m_id`   INT  NULL, -- 회원번호
    `b_id`   INT  NULL, -- 게시판 번호
    `c_id`   INT  NULL, -- 댓글번호
    `l_date` DATE NULL, -- 좋아요 날짜
    PRIMARY KEY (`l_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`b_id`) REFERENCES `MORANMORAN`.`BOARD` (`b_id`) ON DELETE CASCADE,
    FOREIGN KEY (`c_id`) REFERENCES `MORANMORAN`.`COMMENT` (`c_id`) ON DELETE CASCADE
);

-- 회원 찜
CREATE TABLE `MORANMORAN`.`MEMBER_KEEP` (
    `mk_id`	INT  AUTO_INCREMENT, -- 찜 번호
    `m_id`	INT  NOT NULL, -- 회원번호
    `pd_id`	INT  NULL, -- 상품번호
    PRIMARY KEY (`mk_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`pd_id`) REFERENCES `MORANMORAN`.`PRODUCT` (`pd_id`) ON DELETE CASCADE
);
-- 장바구니
CREATE TABLE `MORANMORAN`.`MEMBER_CART` (
	`mc_id`  INT AUTO_INCREMENT, -- 장바구니 번호
	`m_id`   INT NOT NULL, -- 회원번호
	`pd_id`  INT NULL,     -- 상품번호
	`mc_cnt` INT NULL,      -- 수량
    PRIMARY KEY (`mc_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`pd_id`) REFERENCES `MORANMORAN`.`PRODUCT` (`pd_id`) ON DELETE CASCADE
);
-- 주문
CREATE TABLE `MORANMORAN`.`ORDERS` (
	`o_id`     INT  AUTO_INCREMENT, -- 주문번호
	`m_id`     INT  NULL,     -- 회원번호
	`pd_id`    INT  NULL,     -- 상품번호
	`o_date`   DATE NULL,     -- 주문날짜
	`o_total`  INT  NULL,     -- 총가격
	`o_cnt`    INT  NULL,     -- 수량
	`o_status` INT  NULL,      -- 주문상태
    PRIMARY KEY (`o_id`),
	FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`pd_id`) REFERENCES `MORANMORAN`.`PRODUCT` (`pd_id`) ON DELETE CASCADE
);
-- 주문 취소
CREATE TABLE `MORANMORAN`.`ORDER_CANCEL` (
	`oc_id`     INT  AUTO_INCREMENT, -- 주문취소 번호
	`o_id`      INT  NULL,     -- 주문번호
	`oc_reason` TEXT NULL,     -- 주문취소내용
	`oc_date`   DATE NULL,      -- 주문취소날짜
    PRIMARY KEY (`oc_id`),
	FOREIGN KEY (`o_id`) REFERENCES `MORANMORAN`.`ORDERS` (`o_id`) ON DELETE CASCADE
);
-- 후기
CREATE TABLE `MORANMORAN`.`REVIEW` (
    `r_id`               INT  AUTO_INCREMENT, -- 리뷰 번호
    `m_id`               INT  NULL, -- 회원번호
    `o_id`              INT  NULL, -- 상품번호
    `r_title`            VARCHAR(255) NULL, -- 제목
    `r_contents`         VARCHAR(255) NULL, -- 내용
    `r_regdate`          DATE NULL, -- 작성일자
    `r_score`            INT  NULL, -- 평점
    `r_is_maintain`      INT  NULL, -- 정보상태
    `r_retention_period` DATE NULL, -- 정보보관기간
    PRIMARY KEY (`r_id`),
    FOREIGN KEY (`m_id`) REFERENCES `MORANMORAN`.`MEMBER` (`m_id`) ON DELETE CASCADE,
    FOREIGN KEY (`o_id`) REFERENCES `MORANMORAN`.`ORDERS` (`o_id`) ON DELETE CASCADE
);
-- 후기 이미지
CREATE TABLE `MORANMORAN`.`REVIEW_IMG` (
    `r_id`   INT  NULL, -- 후기 번호
    `ri_no`  INT  NULL, -- 이미지 순서번호
    `ri_img` TEXT NULL, -- 후기 이미지
    FOREIGN KEY (`r_id`) REFERENCES `MORANMORAN`.`REVIEW` (`r_id`) ON DELETE CASCADE
);