--GROUP BY ROLLUP         WITH   - ��¥ ���̺��� ���� �۾�   
WITH cte_summary([��ǰ�׷�],[�׷캰���űݾ��հ�],div)
AS	
(
	SELECT groupName AS [��ǰ�׷�]
		 , SUM(price * amount) AS [�׷캰���űݾ��հ�]   
		 , GROUPING_ID(groupName) AS div
	  FROM buyTbl
	 GROUP BY ROLLUP(groupName)
)

SELECT * FROM cte_summary;


WITH cte_summary(GRP,SUMN,div)
AS	
(
	SELECT groupName AS GRP
		 , SUM(price * amount) AS SUMN
		 , GROUPING_ID(groupName) AS DIV
	  FROM buyTbl
	 GROUP BY ROLLUP (groupName)
)

SELECT GRP AS [��ǰ�׷�]
	 , SUMN AS[[�׷캰���űݾ�]
	 , DIV 
  FROM cte_summary;

  --
WITH cte_summary(GRP,SUMN,div)
AS	
(
	SELECT groupName AS GRP
		 , SUM(price * amount) AS SUMN
		 , GROUPING_ID(groupName) AS DIV
	  FROM buyTbl
	 GROUP BY ROLLUP (groupName)
)
SELECT 
	   CASE DIV
	   WHEN 0 THEN GRP
	   WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]
	 , SUMN AS [�׷캰���űݾ�]
  FROM cte_summary
