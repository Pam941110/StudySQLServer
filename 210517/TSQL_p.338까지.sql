-- SQL Programming 
DECLARE @var1 INT = 100
IF @var1 =100
BEGIN 
	PRINT '@var1은 100입니다'
END
ELSE 
BEGIN
	PRINT '@var1은 100이 아닙니다.'
END

-- 실습8
WITH cte_custlevel ([사용자아이디], [회원명], [총구매금액], [고객등급])
AS
(
SELECT U.userID, U.name, SUM(price*amount) AS '구매액',
  CASE 
	WHEN (SUM(price*amount) >=1500 ) THEN '최우수고객'
	WHEN (SUM(price*amount) >=1000 ) THEN '우수고객'
	WHEN (SUM(price*amount) >=1 ) THEN '일반고객'
	ELSE '유령고객'
   END AS '고객등급'
  FROM buyTbl B
 RIGHT OUTER JOIN userTbl U
    ON B.userID = U.userID
 GROUP BY U.userID, U.name
 --ORDER BY SUM(price*amount) DESC
 )
 SELECT [사용자아이디], [회원명]
      , FORMAT([총구매금액], 'C4') AS '구매금액'-- '#,#' 'C4' 
	  , [고객등급] 
   FROM cte_custlevel
  ORDER BY [총구매금액] DESC; 