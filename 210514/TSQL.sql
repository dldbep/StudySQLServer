--���α׷��� ����
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2);     --�����κ� 3�ڸ� , �Ҽ��� ���ڸ� ����
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3);  --����1, �Ҽ���3

SET @myVar1 = 4000;
SET @myVar2 = 344.14;
SET @myVar3 = '��� �̸� ==>';
SET @inchUnit = 0.393;

--SELECT @myVar1, @myVar2 

--SELECT @myVar3 AS 'STRING', name FROM userTbl WHERE height >180 ;
SELECT name , height * @inchUnit FROM userTbl;