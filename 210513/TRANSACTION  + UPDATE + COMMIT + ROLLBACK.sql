--UPDATE     WHERE���� ������ ����
-- Ʈ����� ����
BEGIN TRAN  --TRANSACTION

UPDATE testTbl
   SET username = '�����'
 WHERE id = 2;

UPDATE testTbl
   SET userName = '�����'
	 , addr = '�λ�'
 WHERE id = 2

SELECT * FROM testTbl;

COMMIT;  -- ����� ������ Ŀ�� ����  �׷� �Ƚ�
ROLLBACK;  --�հ� �Ǽ� ������ �� ������ �ǵ���

TRUNCATE TABLE testTbl;   --������ ���θ� �����ϰ�     �ε����� 1���� �ٽ� ����      delete�� ��ȣ�� ������ �������� �ȴ�
