BEGIN TRAN
	UPDATE userTBL set addr = '제주' WHERE USERID = 'KBS'
COMMIT

BEGIN TRAN
	UPDATE userTBL set addr = '미국' WHERE USERID = 'KKH'
ROLLBACK

BEGIN TRAN
	UPDATE userTBL set addr = '호주' WHERE USERID = 'JYP'
COMMIT

SELECT * FROM userTBL


BEGIN TRAN
	UPDATE userTBL set addr = '뉴욕' WHERE USERID = 'KBS'
	UPDATE userTBL set addr = '델리' WHERE USERID = 'KBS'
	UPDATE userTBL set addr = '런던' WHERE USERID = 'KBS'
COMMIT

--Transaction 처리순서 시뮬레이션
USE sampleDB;
GO

CREATE TABLE testTBL (num INT);
GO
INSERT INTO testTBL VALUES (1),(3),(5);

--실행하지 말것
BEGIN TRAN 
UPDATE testTBL SET num = 11 WHERE num =1;
UPDATE testTBL SET num = 33 WHERE num =3;
UPDATE testTBL SET num = 55 WHERE num =5;
COMMIT
ROLLBACK

SELECT * FROM testTBL

SELECT @@TRANCOUNT    --실행중인 트랜잭션 개수










