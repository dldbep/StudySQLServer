--������ ��ȸ
SELECT * FROM userTbl;

--������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

 SELECT userID,name,addr FROM userTbl
  WHERE name LIKE '��%';

  SELECT COUNT(*) FROM userTbl;
  
  SELECT * FROM userTbl
   WHERE height>=180 AND height <=190; 
