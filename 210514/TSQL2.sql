--�ý����Լ� (SQL������ �⺻���� �������ִ� �Լ���)
SELECT CAST(AVG(CAST (amount AS float)) AS DECIMAL(4,3)) FROM buyTbl

SELECT AVG(CONVERT(FLOAT, amount) ) FROM buyTbl;

SELECT PARSE('3' AS INT);  -- ���ܰ� �߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT);  --  TRY���� ����ȯ ���ϸ� NULL ������ ��ü�ϰ� ���������� ����

--height�� ���� SMALLINT�̱� ������   VARCHAR, CHAR�� ����ȯ �ϰ� ����
SELECT name, CAST(height AS varchar) + 'CM' FROM userTbl
 WHERE height IS NOT NULL; --NULL���� =�� ��X    // IS(����) //IS NULL(���� �ʴ�)

 SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME);
 SELECT PARSE('2021-05-14 10:28:10' AS datetime);   --���� ǥ��

 SELECT @@SERVERNAME
 SELECT GETDATE(); -- INSERT ���� ����Ͻú��ʸ� �Է��� �� ���� ����
 -- ��¥ �� �Լ�
SELECT YEAR(GETDATE()) AS '����⵵';
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '����';

--��ġ�Լ�
SELECT ABS(-100);
SELECT ROUND(3.145122392,2);   -- �ݿø�
SELECT FLOOR(RAND() * 100);
SELECT RAND();  --���� + ����

--���Լ�
SELECT IIF(100 > 200, '��','����')

SELECT IIF(div = 0, grp ,'���հ�') AS [��ǰ�׷�2]
	 , CASE div
	   WHEN 0 THEN grp
	   WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]
	 , sumn AS [�׷캰���űݾ�]
	 --, div
  FROM cte_summary;
	


