--������ �ݾ׵���  �ֿ��/���/�Ϲݰ����� �з��ϴ� 
--������ �ۼ��϶�
WITH cte_custlevel([����ھ��̵�],[ȸ����],[�ѱ��űݾ�],[�����])
AS
(
SELECT u.userID AS [����ھƾƵ�], u.name AS [ȸ����]
	 , IIF(SUM(b.price * b.amount)IS NULL,0,SUM(b.price * b.amount)) AS [�ѱ��űݾ�]
	 , CASE 
	    WHEN(SUM(b.price * b.amount) >= 1500) THEN '�ֿ����'
	    WHEN(SUM(b.price * b.amount) >= 1000) THEN '�����'
	    WHEN(SUM(b.price * b.amount) >= 1) THEN '�Ϲݰ�'
		ELSE '���ɰ�'
	   END AS [�����]
  FROM userTbl AS u
 LEFT OUTER JOIN buyTBL AS b
 ON u.userID = b.userID
 GROUP BY U.userID,u.name             --�����Լ� ���� ��ȸ �÷����� �ݵ�� �׷���� �ȿ� ���� �Ѵ�
 --ORDER BY SUM(b.price * b.amount) DESC
 )

SELECT [����ھ��̵�],[ȸ����]
     , FORMAT([�ѱ��űݾ�], 'C4') AS [���űݾ�]     --õ����  '#,#'  OR 'C4'
	 , [�����] 
  FROM cte_custlevel     
 ORDER BY [�ѱ��űݾ�] DESC;






