--GROUP BY     (*)사용 안함 필드 써야 함     
--GROUP BY를 쓰면 집계 함수를 반드시 사용해야 함 , 집계함수는 딱히 GROUP BY없이 쓸 수 있다.
--아이디 별로 물건을 몇개 샀는지 조회  
SELECT userID,SUM(amount) AS  '총구매개수' FROM buyTbl
 GROUP BY userID

 --우리 쇼핑몰에서 가장 돈많이 쓴 사람을 아이디별로 조회하고 그 금액을 같이 출력
SELECT userID, SUM(amount * price) AS '총구매금액' 
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;
 
SELECT AVG(price) AS [평균구매금액] FROM buyTbl

--사용자테이블에서 키가 가장큰사람하고 가장 작은사람 조회
SELECT * FROM userTbl
 WHERE height =166 OR height =186;   -- 이렇게 하지 말기

SELECT * FROM userTbl 
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

SELECT name AS '이름', height AS [키] FROM userTbl 
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS '사용자 아이디'
	 , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //절대불가
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000

 --통계
 SELECT userID AS '사용자 아이디'
	  , groupName
	  , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //절대불가
 GROUP BY userID, groupName;

 -- ROLL UP 중간합계량 총 합계 나옴
  SELECT userID AS '사용자 아이디'
	  , groupName
	  , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //절대불가
 GROUP BY ROLLUP(userID, groupName);

  SELECT groupName AS '사용자 아이디'
	  , userID
	  , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //절대불가
 GROUP BY ROLLUP( groupName,userID);

SELECT groupName
     , userID
	 , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY CUBE(groupName,userID);

   SELECT groupName 
	    , SUM(price * amount) AS [총구매금액]
	  	, GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP( groupName);

