-- 문자열 함수 (중요함)
SELECT ASCII('z') , CHAR(66) -- 사용빈도 하
SELECT UNICODE('가'), NCHAR(44032);  -- 사용빈도 하
-- 문자열 연결
SELECT CONCAT('SQL','server',2019) AS [NAME]; --사용빈도 상

--단어 시작위치
SELECT CHARINDEX('world', 'Hello world!');     --데이터베이스는 1부터 시작     , C#,JAVA,PYTHON은 문자열 0부터 시작

--LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL SERVER 2019';
SELECT LEFT(@STR, 3) , RIGHT(@STR,4);


SELECT SUBSTRING('대한민국만세!',5,2);     --MID랑 똑같네

SELECT LEN('HELLO WORLD');
SELECT LEN('대한민국만세!');

SELECT LOWER('HellO worlD');
SELECT UPPER('HellO worlD');

--공백 제거 함수
SELECT '    SQL' , LTRIM('   SQL');  --중
SELECT '    SQL   ' , RTRIM('   SQL   '); --중
SELECT '    SQL   ' , TRIM('   SQL   '); --상

--REPLACE 사용빈도 최상
SELECT REPLACE('SQL SERVER 2019', 'SERVER', '서버');

-- STR 사용빈도 하
SELECT STR(3.14592);  --숫자를 문자로 변환

-- FORMAT 사용빈도 상
SELECT GETDATE();
SELECT FORMAT(GETDATE(),'yyyy-MM-dd  hh:mm:ss')   --한국식
SELECT FORMAT(GETDATE(),'MM/dd/yyyy  hh:mm:ss')   --미국식



















