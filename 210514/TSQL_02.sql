--시스템함수(SQL서버가 기본으로 제공해주는 함수들)
SELECT CAST(AVG(CAST (amount AS FLOAT)) AS DECIMAL(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- 예외발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT); -- 값변환을 못하면 정상적으로 실행되고 NULL 값 반환 

--height가 SMALLINT 이기때문에 VARCHAR, CHAR로 형변환 
SELECT name, CAST(height AS varchar)+ 'cm' FROM userTbl
 WHERE height IS NOT NULL; 
 -- NULL값은 =로 비교 X // IS(같다) // IS NOT(같지않다)

 SELECT PARSE('2021년 5월 14일 10시 27분' AS DATETIME); 
 SELECT PARSE('2021-5-14 10:28:10' AS DATETIME); 

 SELECT GETDATE(); --INSERT 현재의 날짜와 시간 할 때 (많이 사용)

 SELECT @@SERVERNAME;
 SELECT @@VERSION;

 --날짜 및 시간함수
 SELECT YEAR(GETDATE()) AS '현재년도';
 SELECT MONTH(GETDATE()) AS '현재월';
 SELECT DAY(GETDATE()) AS '오늘';

 --수치함수
 SELECT ABS(-100);
 SELECT ROUND(3.141592,2);
 SELECT FLOOR(RAND()*1000);
 SELECT RAND();

 --논리함수
 SELECT IIF(100>200, '참','거짓');