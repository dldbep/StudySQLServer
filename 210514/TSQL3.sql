-- ���ڿ� �Լ� (�߿���)
SELECT ASCII('z') , CHAR(66) -- ���� ��
SELECT UNICODE('��'), NCHAR(44032);  -- ���� ��
-- ���ڿ� ����
SELECT CONCAT('SQL','server',2019) AS [NAME]; --���� ��

--�ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world!');     --�����ͺ��̽��� 1���� ����     , C#,JAVA,PYTHON�� ���ڿ� 0���� ����

--LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL SERVER 2019';
SELECT LEFT(@STR, 3) , RIGHT(@STR,4);


SELECT SUBSTRING('���ѹα�����!',5,2);     --MID�� �Ȱ���

SELECT LEN('HELLO WORLD');
SELECT LEN('���ѹα�����!');

SELECT LOWER('HellO worlD');
SELECT UPPER('HellO worlD');

--���� ���� �Լ�
SELECT '    SQL' , LTRIM('   SQL');  --��
SELECT '    SQL   ' , RTRIM('   SQL   '); --��
SELECT '    SQL   ' , TRIM('   SQL   '); --��

--REPLACE ���� �ֻ�
SELECT REPLACE('SQL SERVER 2019', 'SERVER', '����');

-- STR ���� ��
SELECT STR(3.14592);  --���ڸ� ���ڷ� ��ȯ

-- FORMAT ���� ��
SELECT GETDATE();
SELECT FORMAT(GETDATE(),'yyyy-MM-dd  hh:mm:ss')   --�ѱ���
SELECT FORMAT(GETDATE(),'MM/dd/yyyy  hh:mm:ss')   --�̱���



















