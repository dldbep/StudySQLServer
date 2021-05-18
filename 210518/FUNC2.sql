CREATE OR ALTER FUNCTION ufn_getinch(@height INT)
	RETURNS INT
AS
BEGIN
	DECLARE @val INT
	SET @val = @height * 0.393;
	RETURN(@val)
END
GO

SELECT userID, name
     , birthYear, dbo.ufn_getAge(birthYear) AS '����'
	 , addr,height ,dbo.ufn_getinch(birthYear) AS 'Ű(��ġ)'
  FROM userTbl;


