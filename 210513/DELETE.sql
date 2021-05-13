-- DELETE
--WHERE절을 안쓰면 사유서를 쓴다
BEGIN TRAN;
DELETE FROM testTbl
 WHERE ID = 4;

SELECT * FROM testTbl;

DELETE FROM testTbl
 WHERE addr = '부산';

COMMIT;
ROLLBACK;
