--������ �Է�
INSERT INTO testTbl VALUES('ȫ�浿','����');
INSERT INTO testTbl(userName,addr) VALUES('����','����');
INSERT INTO testTbl(userName) VALUES('������');
INSERT INTO testTBL(addr,username) VALUES('����','������');
INSERT INTO testTBL(username) VALUES('ȫ���');
INSERT INTO testTBL(addr) VALUES('����');
SELECT * FROM testTbl

--DELETE FROM testTbl;

INSERT INTO userTbl(userID,name,birthYear,addr)
VALUES('IU','������',1993,'����');

SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl(userID,name,birthYear,addr,height)
VALUES ('JJH','������',1982,'�ž�',187)

SELECT * FROM userTbl;