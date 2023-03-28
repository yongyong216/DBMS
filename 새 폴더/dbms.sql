# 내용작성해보기  주석처리
-- 이것도 주석 처리 띄어쓰기를 꼭 해줘야한다.
/*부분 주석처리*/
/*

여러줄로 
주석처리 가능

꼭 세미콜론(;)  붙이기
대소문자 구분하지 않음 

*/

# DDL (데이터 정의어)
# 데이터 베이스 혹은 테이블(뷰, 인덱스, 프로시저 ...)을 생성, 수정, 삭제 할 때 
# 사용하는 SQL문

# CREATE 문
# 데이터베이스, 테이블 등을 생성할 때 사용하는 SQL문

# 데이터베이스 생성
# CREATE DATABASE 데이터베이스명;

CREATE DATABASE Hotel; 

SHOW databases;

 # 데이터베이스를 생성했으면 사용할 데이터베이스를 선택
 # USE 데이터베이스명;

USE Hotel;

# 테이블 생성
# CREATE TABLE 테이블명(
#  필드명 데이터타입(데이터길이) 제약조건,
#  ...
# );

CREATE TABLE Custom(
	id INT PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
    email VARCHAR(30) UNIQUE,  -- text는 길이 지정없이 장문으로 작성 가능
    age INT,
    address TEXT,
    accept_marketing BOOLEAN DEFAULT false     
);

SHOW TABLES;

# 데이터베이스 수정
# ALTER DATABASE 데이터베이스명 속성명 = 값;

# 테이블 수정
# ALTER TABLE 테이블명

# 테이블 필드 추가
# ALTER TABLE 테이블명 ADD 필드명 데이터타입(데이터길이) 제약조건;
# 테이블 필드 삭제
# ALTER TABLE 테이블명 DROP 필드명;
# 테이블 수정
# ALTER TABLE 테이블명 MODIFY COLUMN 필드명 데이터타입(데이터길이) 제약조건;

# 데이터베이스 삭제
# DROP DATABASE 데이터베이스명;

# 테이블 삭제
# DROP TABLE 테이블명;
# TRUNCATE TABLE 테이블명;

# DROP TABLE 테이블명 : 테이블의 정의 자체를 제거
# TRUNCATE TABLE 테이블명 : 테이블을 정의만 남기고 모두 제거(생성 초기 상태로 돌려놓음)


-- DML(데이터 조작어)
-- 데이터베이스 테이블에 레코드를 삽입, 수정, 삭제, 검색 작업을 수행시키고자 할때
-- 사용하는 SQL문

-- 삽입문 (INSERT INTO)
-- 해당 데이블에 레코드를 삽입 할 때 사용하는 SQL 구문
-- INSERT INTO 테이블명(필드1, 필드2, ...)
-- VALUES (필드1의 데이터, 필드2의 데이터, ...);

INSERT INTO Custom(id, name) VALUES (1, 'John Doe');
INSERT INTO Custom(id, email) VALUES(5, 'asdf@asdf');  -- 필수 값 미입력
INSERT INTO custom(id, name, email) VALUES(1,'John Doe','asdf@asdf'); -- 기본기 중복

SELECT * FROM Custom; 

-- 모든 필드에 값을 넣을 때: 
-- INSERT INTO 테이블명
-- VALUES (데이터1, 데이터2, ...);    위에 선언했던 순서 그대로 작성해줘야 한다.

INSERT INTO Custom 
VALUES(10, 'Michle', 'asdf@asdf.com', 30, 'This is Address', true); -- 순서대로 잘 지정해야함

INSERT INTO Custom
VALUES (11, 'qwer@nvaer.com' ,'Jihoon', 31, 'Busan', true);  -- 타입이 같을 때는 위치를 바꿔도 실행이 된다, 문자 길이도 중요함.

INSERT INTO Custom 
VALUES(12, 'Michle', 'asdf1@naver.com', 30, 'This is Address');

-- 수정문 (UPDATE)
-- 해당 테이블에서 특정 필드의 값을 수정하고자 할 때
-- 사용하는 SQL 문

-- UPDATE 테이블명 SET 필드명1=데이터1, 필드명2=데이터2, ...;
UPDATE Custom SET accept_marketing = false;
UPDATE Custom SET accept_marketing = true, age =10;

-- UPDATE 테이블명 SET 필드명1=데이터1, ...
-- WHERE 조건;
UPDATE Custom SET email='eamil@eamil.com'
WHERE id =1;

-- 삭제문 (DELETE)
-- 해당 테이블에서 레코드를 삭제할 때 사용하는 SQL문

-- DELETE FROM 테이블명;
DELETE FROM Custom;

-- DELETE FROM 테이블명 WHERE 조건;
DELETE FROM Custom WHERE name = 'John Doe';

-- 검색문(SELECT)
-- 해당테이블에서 특정 필드를 검색하고자 할 때 사용하는 SQL문alter

-- SELECT 필드명1, 필드명2, ... FROM 테이블명;
SELECT id, name FROM Custom;

-- SELECT * FROM 테이블명;
SELECT * FROM Custom;

-- 필드에 별칭 사용
SELECT name AS 'Full Name'
FROM Custom;

-- 테이블에 별칭 사용
SELECT C.name 
FROM Custom AS C;

-- 중복 제거(DISTINCT)
SELECT DISTINCT name FROM Custom;





