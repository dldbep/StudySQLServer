--����
BEGIN TRAN;

--
SELECT * FROM testTbl;
--�������Է�
INSERT INTO testTbl VALUES('�ֿ��','ĳ��');

--������ ����
UPDATE testTbl
   SET username = '������'
     , addr = '����'
 WHERE ID = 3;
 
-- ������ ����
DELETE FROM testTbl WHERE username = 'ȫ���';

COMMIT;
ROLLBACK;