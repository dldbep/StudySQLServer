-- �ܺ�����
--�츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ
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

-- �л�/���Ƹ�/�������� ���̺�
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
  FROM stdTbl AS s   --LEFT ��  LEFT���� ������ ����    RIGHT�� RIGHT���� ������ ���̺��� ����
 LEFT OUTER JOIN reginfoTbl AS r
    ON s.StdID = r.StdID
 LEFT OUTER JOIN clubTbl AS c            
    ON c.ClubName = r.ClubNAME  


