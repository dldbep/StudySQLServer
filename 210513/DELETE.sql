-- DELETE
--WHERE���� �Ⱦ��� �������� ����
BEGIN TRAN;
DELETE FROM testTbl
 WHERE ID = 4;

SELECT * FROM testTbl;

DELETE FROM testTbl
 WHERE addr = '�λ�';

COMMIT;
ROLLBACK;
