BEGIN TRAN
	UPDATE userTBL set addr = '����' WHERE USERID = 'KBS'
COMMIT

BEGIN TRAN
	UPDATE userTBL set addr = '�̱�' WHERE USERID = 'KKH'
ROLLBACK

BEGIN TRAN
	UPDATE userTBL set addr = 'ȣ��' WHERE USERID = 'JYP'
COMMIT

SELECT * FROM userTBL


BEGIN TRAN
	UPDATE userTBL set addr = '����' WHERE USERID = 'KBS'
	UPDATE userTBL set addr = '����' WHERE USERID = 'KBS'
	UPDATE userTBL set addr = '����' WHERE USERID = 'KBS'
COMMIT

--Transaction ó������ �ùķ��̼�
USE sampleDB;
GO

CREATE TABLE testTBL (num INT);
GO
INSERT INTO testTBL VALUES (1),(3),(5);

--�������� ����
BEGIN TRAN 
UPDATE testTBL SET num = 11 WHERE num =1;
UPDATE testTBL SET num = 33 WHERE num =3;
UPDATE testTBL SET num = 55 WHERE num =5;
COMMIT
ROLLBACK

SELECT * FROM testTBL

SELECT @@TRANCOUNT    --�������� Ʈ����� ����










