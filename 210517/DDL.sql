--���̺� ����
USE sampleDB;
GO

-- DDL�� ���̺� ����
CREATE TABLE ddlTbl
(
	id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME 
);
GO

--DDL ���̺� ����
ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl
(
	id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME 
);
GO



