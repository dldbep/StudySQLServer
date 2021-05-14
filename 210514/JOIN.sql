-- JOIN : INNER JOIN
SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS [mobile]
	 , b.num
	 , b.price
	 , b.amount
FROM userTbl AS u
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
WHERE u.userID = 'JYP';

-- 3개 테이블 내부조인
SELECT * FROM stdtbl;
SELECT * FROM clubTbl;

SELECT s.Stdid, s.stdname
     , r.clubname
	 , r.regdate, c.clubroom
  FROM STDTBL AS s
  INNER JOIN reginfotbl AS r
     on s.stdid = r.stdid
  INNER JOIN clubTbl AS C
     ON c.ClubName = r.ClubName
 WHERE S.StdID = 'KBS';


