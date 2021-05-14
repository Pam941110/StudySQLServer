-- 문자열 함수
SELECT ASCII('A'), CHAR(66); -- 사용빈도 하
SELECT UNICODE('가'), NCHAR(44032); -- 사용빈도 하 

-- 문자열 연결
SELECT CONCAT('SQL ','SERVER ',2019) AS [name]; -- 사용빈도 상
SELECT 'SQL ' + 'SERVER ' + CAST(2019 AS varchar); -- 불편!

-- 단어 시작위치
SELECT CHARINDEX('world','Hello world!');
-- c#, Java, python 문자열 0부터 시작
-- DB 1부터 시작

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM 
DECLARE @STR VARCHAR(20);
SET @STR ='SQL SERVER 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('대한민국만세!',5,2);

SELECT LEN('Hello World');
SELECT LEN('대한민국만세!');

SELECT LOWER('hELLO World'), UPPER('hELLO World');
--CD1001, CD2005, cd2005
SELECT UPPER('cd2005');

-- 스페이스 제거 함수
SELECT '     SQL', LTRIM('     SQL'); --중
SELECT '     SQL     ', RTRIM('     SQL        '); --중
SELECT '     SQL     ', TRIM('     SQL        '); --상 

-- Replace 사용빈도 최상
SELECT REPLACE('SQL Server 2019','server','서버');

-- STR 
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT 사용빈도 상
SELECT FORMAT (GETDATE(),'dd/MM/yyyy');
