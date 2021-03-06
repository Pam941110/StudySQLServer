USE sqlDB;
GO

SELECT * FROM userTbl
 WHERE userID = 'KKH';
 
 -- 사용자 테이블에서 출생년도 1970~1980년 사이이고 키가 180이상인 사람을 조회
SELECT * FROM userTbl
 WHERE birthYear >= 1970 AND birthYear <= 1980
   AND height >= 180;

SELECT * FROM userTbl
 WHERE birthYear BETWEEN 1970 AND 1980
   AND height >= 180;

-- 출생년도가 1970년 이후이거나 키가 182이상인 사람 조회
SELECT * FROM userTbl
 WHERE birthYear >= 1970 OR height >= 182;

-- 사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT [name], userID, addr FROM userTbl
 WHERE addr IN ('경남','전남','경북');

 -- LIKE 절 (문자열에서 속하는 문자열이 있는 = contain)
 SELECT name, height, addr FROM userTbl
  WHERE name LIKE '김%';

SELECT name, height, addr FROM userTbl
 WHERE name LIKE '%용%'; -- 컴터 성능을 떨어트리는 주범!!


 -- SubQuery
 -- 키가 177보다 큰 사람들을 조회 
 SELECT * FROM userTbl
  WHERE height > 177;

 -- 김경호보다 키가 큰 사람들을 조회
 SELECT * FROM userTbl
  WHERE height > (SELECT height FROM userTbl WHERE name = '김경호');

  -- 경남에 사는 사람들보다 키가 큰 사람들 조회
 SELECT * FROM userTbl
  WHERE height > ANY (SELECT height FROM userTbl WHERE addr = '경남');

 -- IN은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
 SELECT * FROM userTbl
  WHERE height IN (SELECT height FROM userTbl WHERE addr = '경남');

  -- (=ANY) == (IN)은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
 SELECT * FROM userTbl
  WHERE height = ANY (SELECT height FROM userTbl WHERE addr = '경남');

 SELECT * FROM userTbl
  ORDER BY height DESC, name DESC; -- 키로 정렬한 뒤 나오는 같은 값에서, 이름으로 내림차순 정렬

  -- userTbl에 몇개의 데이터(레코드)가 있는지 확인 
  SELECT COUNT(*) FROM userTbl;
  SELECT COUNT(*) FROM buyTbl;

  -- DISTINCT (중복제거)
SELECT DISTINCT addr FROM userTbl;

-- TOP
USE AdventureWorksLT2019
GO

SELECT TOP 10 * FROM SalesLT.Customer;
SELECT TOP (10) * FROM SalesLT.Customer; -- SAME...

SELECT TOP 10 * 
  FROM SalesLT.Customer
 WHERE Title = 'Ms.'
 ORDER BY CustomerID DESC;

 -- 잘 안써요...
 SELECT * FROM SalesLT.Customer
 TABLESAMPLE(10 PERCENT);

 -- 잘 안써요...
 SELECT * FROM SalesLT.Customer
  ORDER BY FirstName
 OFFSET 5 ROW
  FETCH NEXT 3 ROWS ONLY; -- 프로시저/함수에 자주 쓰이므로 알아둘 것!