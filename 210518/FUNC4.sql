CREATE OR ALTER  FUNCTION ufn_getUsers(@height INT)
	RETURNS TABLE
AS
	RETURN(
		SELECT * FROM userTbl
		 WHERE height > @height
	)
GO

SELECT * FROM dbo.ufn_getUsers(170);


SELECT * FROM dbo.ufn_userGrade(1970);
SELECT * FROM dbo.ufn_userGrade(1999);

-- 함수
SELECT * FROM dbo.ufn_userGrade(1980);

SELECT userID, birthYear, dbo.ufn_getAge(birthYear) FROM userTbl;


-- 저장프로시저
EXEC usp_user1 '성시경'

