USE sampleDB;
GO

CREATE TABLE userTBL
(
	 userID CHAR(8) NOT NULL PRIMARY KEY,  --�⺻Ű  = unique + not null
	 name NVARCHAR(10) NOT NULL,
	 birthYear INT NOT NULL,
	 height SMALLINT
)
;

CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY,   --�⺻Ű
	userID CHAR(8) NOT NULL 
	     FOREIGN KEY REFERENCES userTBL(userID),    --�ܷ�Ű
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)
;
GO

--DDL �ΰ� �̻��� �÷� PK�� ���� ���̺����
CREATE TABLE prodTBL
(
	prodCode NCHAR(3) NOT NULL ,
	prodID NCHAR(4) NOT NULL ,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL ,
	CONSTRAINT PK_prodTBL_prodCode_prodID     
	     PRIMARY KEY (prodCode, prodID)
);
GO

-- userTBL�� email(����ũ��������) �߰�
-- buyTbl ������ �� ����, userTBL ������ �� ����
-- userTBL(email) �÷����� �ѵ�, ���� ���� ����
ALTER TABLE userTBL 
  ADD email VARCHAR(50)  NOT NULL UNIQUE;


--CHECK ��������
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= Year(GETDATE()));
--2021����

SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;






