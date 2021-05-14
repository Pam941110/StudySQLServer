-- JOIN : INNER JOIN(내부조인)
SELECT * FROM buyTbl
 INNER JOIN userTbl
    ON userTbl.userID = buyTbl.userID
--WHERE buyTbl.userID = 'JYP';

SELECT buyTbl.userID, name, prodName, addr, mobile1+mobile2 AS [연락처]
  FROM buyTbl
 INNER JOIN userTbl
    ON userTbl.userID = buyTbl.userID;

-- 구매한 적이 있는 회원조회 
SELECT DISTINCT U.userID, U.name, U.addr
  FROM userTbl U
 INNER JOIN buyTbl B
    ON U.userID = B.userID
 ORDER BY U.userID;