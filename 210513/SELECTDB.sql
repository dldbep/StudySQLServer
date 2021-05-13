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

-- SELECT INTO     - 테이블 복사
-- userTbl_New 테이블이 생성 (PK 키정보는 미생성)
SELECT * INTO userTbl_New FROM userTbl;

SELECT userID, name,addr INTO userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;

SELECT userID, name ,addr INTO userTbl_Backup2 FROM userTbl
 WHERE addr ='서울';

SELECT *FROM userTbl_Backup2; 
  