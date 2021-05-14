-- 외부조인
--우리 쇼핑몰에서 물건을 한번도 구매하지 않은 회원들을 조회
SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
LEFT OUTER JOIN buyTbl AS b
	ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

SELECT u.userID, u.name
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
	 , b.prodName
  FROM userTbl AS u
RIGHT OUTER JOIN buyTbl AS b
	ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

-- 학생/동아리/가입정보 테이블
--OUTERJOIN
SELECT s.StdID, s.StdName,s.Region 
     , r.ClubNAME , r.RegDate
	 , c.ClubRoom
  FROM stdTbl AS s
 LEFT OUTER JOIN reginfoTbl AS r
    ON s.StdID = r.StdID
 LEFT OUTER JOIN clubTbl AS c
    ON c.ClubName = r.ClubNAME

SELECT s.StdID, s.StdName,s.Region 
     , r.ClubNAME , r.RegDate	 
  FROM stdTbl AS s
 LEFT OUTER JOIN reginfoTbl AS r
    ON s.StdID = r.StdID;

 
SELECT c.ClubName, c.ClubRoom ,r.id, r.RegDate
  FROM clubTbl AS c
  LEFT OUTER JOIN reginfoTbl AS r
    ON c.ClubName = r.ClubNAME;

SELECT s.StdID, s.StdName,s.Region 
     , r.ClubNAME , r.RegDate
	 , c.ClubRoom
  FROM stdTbl AS s   --LEFT 면  LEFT기준 왼쪽이 기준    RIGHT면 RIGHT기준 오른쪽 테이블이 기준
 LEFT OUTER JOIN reginfoTbl AS r
    ON s.StdID = r.StdID
 LEFT OUTER JOIN clubTbl AS c            
    ON c.ClubName = r.ClubNAME  


