--GROUP BY     (*)��� ���� �ʵ� ��� ��     
--GROUP BY�� ���� ���� �Լ��� �ݵ�� ����ؾ� �� , �����Լ��� ���� GROUP BY���� �� �� �ִ�.
--���̵� ���� ������ � ����� ��ȸ  
SELECT userID,SUM(amount) AS  '�ѱ��Ű���' FROM buyTbl
 GROUP BY userID

 --�츮 ���θ����� ���� ������ �� ����� ���̵𺰷� ��ȸ�ϰ� �� �ݾ��� ���� ���
SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�' 
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount * price) DESC;
 
SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl

--��������̺��� Ű�� ����ū����ϰ� ���� ������� ��ȸ
SELECT * FROM userTbl
 WHERE height =166 OR height =186;   -- �̷��� ���� ����

SELECT * FROM userTbl 
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

SELECT name AS '�̸�', height AS [Ű] FROM userTbl 
 WHERE height = (SELECT MAX(height) FROM userTbl)
	OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS '����� ���̵�'
	 , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //����Ұ�
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000

 --���
 SELECT userID AS '����� ���̵�'
	  , groupName
	  , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //����Ұ�
 GROUP BY userID, groupName;

 -- ROLL UP �߰��հ跮 �� �հ� ����
  SELECT userID AS '����� ���̵�'
	  , groupName
	  , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //����Ұ�
 GROUP BY ROLLUP(userID, groupName);

  SELECT groupName AS '����� ���̵�'
	  , userID
	  , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
--WHERE SUM(price * amount) >= 1000  //����Ұ�
 GROUP BY ROLLUP( groupName,userID);

SELECT groupName
     , userID
	 , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY CUBE(groupName,userID);

   SELECT groupName 
	    , SUM(price * amount) AS [�ѱ��űݾ�]
	  	, GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP( groupName);

