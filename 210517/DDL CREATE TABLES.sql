USE sampleDB;
GO

CREATE TABLE userTBL
(
	 userID CHAR(8) NOT NULL PRIMARY KEY,  --기본키  = unique + not null
	 name NVARCHAR(10) NOT NULL,
	 birthYear INT NOT NULL,
	 height SMALLINT
)
;

CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY,   --기본키
	userID CHAR(8) NOT NULL 
	     FOREIGN KEY REFERENCES userTBL(userID),    --외래키
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)
;
GO

--DDL 두개 이상의 컬럼 PK로 지정 테이블생성
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

-- userTBL에 email(유니크제약조건) 추가
-- buyTbl 데이터 다 삭제, userTBL 데이터 다 삭제
-- userTBL(email) 컬럼삭제 한뒤, 밑의 쿼리 실행
ALTER TABLE userTBL 
  ADD email VARCHAR(50)  NOT NULL UNIQUE;


--CHECK 제약조건
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= Year(GETDATE()));
--2021까지

SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;






