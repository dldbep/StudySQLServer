USE sqlDB;   -- 내가 사용하고 싶어하는 DB지정
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';

 --사용자 테이블에서 출생년도 1970년에서 1980년 사이
 --이고 킨가 180이상인 사람을 조회
 SELECT * FROM userTbl
  WHERE birthYear > 1970 AND birthYear <=1980
    AND height >= 180;

-- 출생년도가 1970년 이후이거나 키가 182이상인 사람조회
SELECT * FROM userTbl
 WHERE birthYear >= 1970 or height >=182;

 SELECT * FROM userTbl
  WHERE birthYear BETWEEN 1970 AND 1980
    AND height >= 180;

--사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT name, userID, addr FROM userTbl
 WHERE addr = '경남' OR addr ='전남' OR addr ='경북';

 SELECT name, userID, addr FROM userTbl
  WHERE addr IN ('경남','전남','경북');

--LIKE 절(문자열에서 속하는 문자열이 있는 (contain))
SELECT name, height, addr FROM userTbl
 WHERE name LIKE '김%';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '김__';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '_비킴';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '%용%';

 --SubQuery
 --서브쿼리에는 * 사용안함 
 --키가 175보다 큰사람들 조회
 SELECT * FROM userTbl
  WHERE height > 175;
 --김경호보다 키가 큰사람을 조회
 SELECT * FROM userTbl
  WHERE height > (SELECT height FROM  userTbl WHERE name = '김경호');
 --경남에 사는 사람들보다 키가 큰 사람들 조회  - 키가 170이나 173보다 큰 사람들 다 뽑음
 SELECT * FROM userTbl
  WHERE height > ANY(SELECT height FROM  userTbl WHERE addr = '경남');

-- (=ANY)== (IN)은 서브쿼리에서 나온 결과와 일치하는 결과만 조회  
 SELECT * FROM userTbl
  WHERE height IN (SELECT height FROM  userTbl WHERE addr = '경남');

-- ORDERBY
SELECT * FROM userTbl
 ORDER BY height DESC, name DESC;  --키로 정렬후 같은 값 나왓을 때 이름으로 정렬

--mobile1으로 오름차순 뒤 같은 값이면 mobile2로 내림차순
SELECT * FROM userTbl
 ORDER BY mobile1 ASC , mobile2 DESC;

--userTbl에 몇개의 데이터(레코드)가 있는지 확인
SELECT COUNT (*) FROM userTbl;
SELECT COUNT(*) FROM buyTbl;

--DISTINCT (중복제거)
SELECT DISTINCT addr FROM userTbl;

--TOP
USE AdventureWorksLT2019
GO

SELECT TOP 10 * FROM SalesLT.Customer;      --위에서 10개


SELECT TOP(10) * 
	FROM SalesLT.Customer 
	WHERE Title = 'Ms.'
	ORDER BY CustomerID DESC;

SELECT TOP(10)PERCENT *       --전체 10퍼센트 반올림해서
	FROM SalesLT.Customer 
	WHERE Title = 'Ms.'
	ORDER BY CustomerID DESC;

--
SELECT * FROM SalesLT.Customer
TABLESAMPLE(10 PERCENT);  --10퍼센트 내에서 랜덤으로 결과를 출력  (????어디 쓰지)거의 안씀


SELECT * FROM SalesLT.Customer
ORDER BY FirstName
OFFSET 5 ROW    --이것도 사용 안함   앞에 있는 5개 데이터 건너 뛰고 출력
FETCH NEXT 3 ROWS ONLY;   -- 출력될 행의 개수 지정


