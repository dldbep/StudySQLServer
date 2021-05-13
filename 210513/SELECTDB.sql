--데이터 조회
SELECT * FROM userTbl;

--데이터 조회 필터링
SELECT * FROM userTbl
 WHERE userID = 'BBK';

 SELECT userID,name,addr FROM userTbl
  WHERE name LIKE '김%';

  SELECT COUNT(*) FROM userTbl;
  
  SELECT * FROM userTbl
   WHERE height>=180 AND height <=190; 
