--�����Լ�
SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '���ż���'
     , TRIM(userID) AS userID, SUM(price * amount) AS '����ں����űݾ�'
  FROM buyTbl
 GROUP BY userID
--  FOR JSON AUTO; -- FOR XML AUTO


SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS [Űū����]
     , name,addr,height
  FROM userTbl 
 WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY height DESC) AS [Űū����]
     , name,addr,height
  FROM userTbl 
 WHERE height IS NOT NULL;

SELECT addr, ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC, name ASC) AS [������ Űū����]
     , name, height
  FROM userTbl;

