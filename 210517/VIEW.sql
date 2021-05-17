
USE sampleDB
GO

-- VIEW

CREATE VIEW v_userTBL
AS
	SELECT userID, name, addr FROM userTBL;
GO

SELECT * FROM v_buytbl

CREATE VIEW v_userbuyinfo
AS
	 SELECT u.userID, u.name, b.prodname, b.price
	 from  userTBL as u
	 INNER JOIN buyTBL as b
	 on u.userid = b.userid;
 GO

 SELECT * FROM v_userbuyinfo
  ORDER BY price DESC;

DROP VIEW v_userTBL;


