--프로그래밍 시작
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2);     --정수부분 3자리 , 소수점 두자리 까지
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3);  --정수1, 소수점3

SET @myVar1 = 4000;
SET @myVar2 = 344.14;
SET @myVar3 = '기수 이름 ==>';
SET @inchUnit = 0.393;

--SELECT @myVar1, @myVar2 

--SELECT @myVar3 AS 'STRING', name FROM userTbl WHERE height >180 ;
SELECT name , height * @inchUnit FROM userTbl;