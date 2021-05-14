-- 테이블 합치기
SELECT StdName, Region FROM stdTbl
 UNION
SELECT ClubName,ClubRoom FROM clubTbl;
--데이터 타입이 일치해야 UNION가능
SELECT CAST(id AS varchar),StdID FROM reginfoTbl  
UNION
SELECT ClubName,ClubRoom FROM clubTbl;
-- UNION은 중복제거   UNION ALL 중복 허용
SELECT StdName,Region FROM stdTbl
UNION ALL
SELECT StdName,Region FROM stdTbl   

--EXCEPT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
EXCEPT --위에 데이터에서 밑에 데이터들을 빼버린다
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM usertbl
 WHERE mobile1 IS NOT NULL

SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM usertbl
 WHERE mobile1 IS NOT NULL



