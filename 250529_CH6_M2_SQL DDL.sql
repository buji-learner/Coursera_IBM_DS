---- CREATE
CREATE TABLE PETSALE (
        ID INTEGER NOT NULL,
        PET CHAR(20),
        SALEPRICE DECIMAL(6,2),
        PROFIT DECIMAL(6,2),
        SALEDATE DATE
        );
CREATE TABLE PET (
        ID INTEGER NOT NULL,
        ANIMAL VARCHAR(20),
        QUANTITY INTEGER
        );


---- INSERT
INSERT INTO PETSALE VALUES
        (1,'Cat',450.09,100.47,'2018-05-29'),
        (2,'Dog',666.66,150.76,'2018-06-01'),
        (3,'Parrot',50.00,8.9,'2018-06-04'),
        (4,'Hamster',60.60,12,'2018-06-11'),
        (5,'Goldfish',48.48,3.5,'2018-06-14');
        
INSERT INTO PET VALUES
        (1,'Cat',3),
        (2,'Dog',4),
        (3,'Hamster',2);
SELECT * FROM PETSALE;
SELECT * FROM PET;

---- ALTER
---- 열 추가
ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;
SELECT * FROM PETSALE;


---- UPDATE
UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;
SELECT * FROM PETSALE;

ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

---- 열 삭제
ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

---- 열 수정
ALTER TABLE PETSALE
MODIFY PET VARCHAR(20);
SELECT * FROM PETSALE;

---- 열 이름 변경
ALTER TABLE `PETSALE` CHANGE `PET` `ANIMAL` varchar(20);
-- '' 있으면 error
-- >> 수정
ALTER TABLE PETSALE CHANGE PET ANIMAL varchar(20);

SELECT * FROM PETSALE;

---- 테이블 데이터 삭제, 테이블 존재
TRUNCATE TABLE PET ;
SELECT * FROM PET;

---- 테이블 전부 삭제
DROP TABLE PET;
SELECT * FROM PET;

---------------------------------------------
-- 연습문제
-- 1. ID(정수), Variety(가변 길이 문자열), Quantity(정수) 속성을 가진 Toys라는 이름의 새로운 테이블을 데이터베이스에 생성하세요. ID가 Null이 아님을 확인하세요.
CREATE TABLE TOYS (
        ID INTEGER NOT NULL,
        VARIETY CHAR(20),
        Quantity INTEGER
        );

-- 2. 아래에 언급된 항목을 INSERT 문을 사용하여 테이블에 추가하세요.
INSERT INTO TOYS VALUES
        (1,'Chew toy', 20),
        (2,'Balls', 50),
        (3,'Bowls', 30),
        (4,'Foldable bed', 40);

-- 3. 테이블에서 ‘Variety’의 길이를 30자로 변경합니다.
ALTER TABLE TOYS
MODIFY VARIETY VARCHAR(30);
SELECT * FROM TOYS;

-- 4. ‘Toys’ 테이블 자르기
TRUNCATE TABLE TOYS ;


-- 5. ‘Toys’ 테이블 삭제
DROP TABLE TOYS ;