-- ���̺� ��ġ��
SELECT StdName, Region FROM stdTbl
 UNION
SELECT ClubName,ClubRoom FROM clubTbl;
--������ Ÿ���� ��ġ�ؾ� UNION����
SELECT CAST(id AS varchar),StdID FROM reginfoTbl  
UNION
SELECT ClubName,ClubRoom FROM clubTbl;
-- UNION�� �ߺ�����   UNION ALL �ߺ� ���
SELECT StdName,Region FROM stdTbl
UNION ALL
SELECT StdName,Region FROM stdTbl   

--EXCEPT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT --���� �����Ϳ��� �ؿ� �����͵��� ��������
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM usertbl
 WHERE mobile1 IS NOT NULL

SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM usertbl
 WHERE mobile1 IS NOT NULL



