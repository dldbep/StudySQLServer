--구매한 금액따라서  최우수/우수/일반고객으로 분류하는 
--쿼리를 작성하라
WITH cte_custlevel([사용자아이디],[회원명],[총구매금액],[고객등급])
AS
(
SELECT u.userID AS [사용자아아디], u.name AS [회원명]
	 , IIF(SUM(b.price * b.amount)IS NULL,0,SUM(b.price * b.amount)) AS [총구매금액]
	 , CASE 
	    WHEN(SUM(b.price * b.amount) >= 1500) THEN '최우수고객'
	    WHEN(SUM(b.price * b.amount) >= 1000) THEN '우수고객'
	    WHEN(SUM(b.price * b.amount) >= 1) THEN '일반고객'
		ELSE '유령고객'
	   END AS [고객등급]
  FROM userTbl AS u
 LEFT OUTER JOIN buyTBL AS b
 ON u.userID = b.userID
 GROUP BY U.userID,u.name             --집계함수 제외 조회 컬럼들은 반드시 그룹바이 안에 들어가야 한다
 --ORDER BY SUM(b.price * b.amount) DESC
 )

SELECT [사용자아이디],[회원명]
     , FORMAT([총구매금액], 'C4') AS [구매금액]     --천단위  '#,#'  OR 'C4'
	 , [고객등급] 
  FROM cte_custlevel     
 ORDER BY [총구매금액] DESC;






