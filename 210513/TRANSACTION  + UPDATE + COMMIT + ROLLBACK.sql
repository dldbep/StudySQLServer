--UPDATE     WHERE절을 빼먹지 말자
-- 트랜잭션 시작
BEGIN TRAN  --TRANSACTION

UPDATE testTbl
   SET username = '성명건'
 WHERE id = 2;

UPDATE testTbl
   SET userName = '성명건'
	 , addr = '부산'
 WHERE id = 2

SELECT * FROM testTbl;

COMMIT;  -- 제대로 됐으면 커밋 실행  그럼 픽스
ROLLBACK;  --먼가 실수 햇으면 그 전으로 되돌림

TRUNCATE TABLE testTbl;   --데이터 전부를 삭제하고     인덱스도 1부터 다시 시작      delete는 번호는 마지막 다음으로 된다
