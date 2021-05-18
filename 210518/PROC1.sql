--�Ķ����(�Ű�����) ���� ���ν���
CREATE PROC usp_user1
	@userName NVARCHAR(10)
AS
	--����
	SELECT userID,name, birthYear FROM userTbl
	WHERE name = @userName;

GO

CREATE PROC usp_user2
	@userBirthYear INT,
	@userHeight INT
AS
	SELECT userID,name,birthYear,height,mDate FROM userTbl
	 WHERE birthYear >= @userBirthYear 
	   AND height >= @userHeight;
GO

EXEC usp_user2 1970,178;


--���ν����� �Լ� �ڵ����� CREATE OR ALTER PROC(FUNC) ������ ������ ���ÿ�   
CREATE PROC usp_user3
	@lastName NVARCHAR(2),
	@outCount INT OUTPUT    --���Ϲ޴� ��
AS
	SELECT @outCount = COUNT(*) FROM userTbl WHERE name LIKE @lastName + '%';
GO

SELECT COUNT(*) FROM userTbl WHERE name LIKE '��' + '%';

DECLARE @myValue INT;
EXEC usp_user3 '��', @myValue OUTPUT;
PRINT CONCAT('�达 ���� ���� ����� ���� ', @myValue);






