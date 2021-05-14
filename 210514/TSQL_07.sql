-- OUTTER JOIN 
-- 전체 회원의 구매기록 BUT, 구매 기록이 없는 회원도 출력
SELECT U.userID, U.name, B.prodName, U.addr, U.mobile1+U.mobile2 AS [연락처]
  FROM userTbl U
  LEFT OUTER JOIN buyTbl B
    ON U.userID = B.userID
 ORDER BY U.userID

-- 유령회원 목록
SELECT U.userID, U.name, B.prodName, U.addr, U.mobile1+U.mobile2 AS [연락처]
  FROM userTbl U
  LEFT OUTER JOIN buyTbl B
    ON U.userID = B.userID
 WHERE B.prodName IS NULL
 ORDER BY U.userID;

 --실습7
 --step1
 SELECT S.stdName, S.addr, C.clubName, C.roomNo
   FROM stdTbl S
   LEFT JOIN stdclubTbl SC
	 ON S.stdName = SC.stdName
   LEFT JOIN clubTbl C
     ON C.clubName = SC.clubName
  ORDER BY S.stdName;

--IF...ELSE...
DECLARE @var1 INT
    SET @var1 = 100
     IF @var1 = 100
  BEGIN 
  PRINT '@var1은 100이다'
    END
   ELSE
  BEGIN 
  PRINT '@var1은 100이 아니다'
    END; 
