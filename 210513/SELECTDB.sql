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

-- SELECT INTO     - ���̺� ����
-- userTbl_New ���̺��� ���� (PK Ű������ �̻���)
SELECT * INTO userTbl_New FROM userTbl;

SELECT userID, name,addr INTO userTbl_Backup FROM userTbl;

SELECT * FROM userTbl_Backup;

SELECT userID, name ,addr INTO userTbl_Backup2 FROM userTbl
 WHERE addr ='����';

SELECT *FROM userTbl_Backup2; 
  