--통합
BEGIN TRAN;

--
SELECT * FROM testTbl;
--데이터입력
INSERT INTO testTbl VALUES('최우식','캐낫');

--데이터 수정
UPDATE testTbl
   SET username = '이지은'
     , addr = '서울'
 WHERE ID = 3;
 
-- 데이터 삭제
DELETE FROM testTbl WHERE username = '홍길순';

COMMIT;
ROLLBACK;