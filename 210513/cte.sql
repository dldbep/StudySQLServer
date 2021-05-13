--GROUP BY ROLLUP         WITH   - 가짜 테이블을 만들어서 작업   
WITH cte_summary([제품그룹],[그룹별구매금액합계],div)
AS	
(
	SELECT groupName AS [제품그룹]
		 , SUM(price * amount) AS [그룹별구매금액합계]   
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

SELECT GRP AS [상품그룹]
	 , SUMN AS[[그룹별구매금액]
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
	   WHEN 1 THEN '총합계' END AS [상품그룹]
	 , SUMN AS [그룹별구매금액]
  FROM cte_summary
