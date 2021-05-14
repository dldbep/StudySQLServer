--시스템함수 (SQL서버가 기본으로 제공해주는 함수들)
SELECT CAST(AVG(CAST (amount AS float)) AS DECIMAL(4,3)) FROM buyTbl

SELECT AVG(CONVERT(FLOAT, amount) ) FROM buyTbl;

SELECT PARSE('3' AS INT);  -- 예외가 발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT);  --  TRY사용시 값변환 못하면 NULL 값으로 대체하고 정상적으로 수행

--height는 원래 SMALLINT이기 때문에   VARCHAR, CHAR로 형변환 하고 수행
SELECT name, CAST(height AS varchar) + 'CM' FROM userTbl
 WHERE height IS NOT NULL; --NULL값은 =로 비교X    // IS(같다) //IS NULL(같지 않다)

 SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME);
 SELECT PARSE('2021-05-14 10:28:10' AS datetime);   --국내 표준

 SELECT @@SERVERNAME
 SELECT GETDATE(); -- INSERT 현재 년월일시분초를 입력할 때 많이 쓴다
 -- 날짜 및 함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재울';
SELECT DAY(GETDATE()) AS '오늘';

--수치함수
SELECT ABS(-100);
SELECT ROUND(3.145122392,2);   -- 반올림
SELECT FLOOR(RAND() * 100);
SELECT RAND();  --랜덤 + 내림

--논리함수
SELECT IIF(100 > 200, '참','거짓')

SELECT IIF(div = 0, grp ,'총합계') AS [상품그룹2]
	 , CASE div
	   WHEN 0 THEN grp
	   WHEN 1 THEN '총합계' END AS [상품그룹]
	 , sumn AS [그룹별구매금액]
	 --, div
  FROM cte_summary;
	


