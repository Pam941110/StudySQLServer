-- JOIN : INNER JOIN(��������)
SELECT * FROM buyTbl
 INNER JOIN userTbl
    ON userTbl.userID = buyTbl.userID
--WHERE buyTbl.userID = 'JYP';

SELECT buyTbl.userID, name, prodName, addr, mobile1+mobile2 AS [����ó]
  FROM buyTbl
 INNER JOIN userTbl
    ON userTbl.userID = buyTbl.userID;

-- ������ ���� �ִ� ȸ����ȸ 
SELECT DISTINCT U.userID, U.name, U.addr
  FROM userTbl U
 INNER JOIN buyTbl B
    ON U.userID = B.userID
 ORDER BY U.userID;