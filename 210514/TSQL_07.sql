-- OUTTER JOIN 
-- ��ü ȸ���� ���ű�� BUT, ���� ����� ���� ȸ���� ���
SELECT U.userID, U.name, B.prodName, U.addr, U.mobile1+U.mobile2 AS [����ó]
  FROM userTbl U
  LEFT OUTER JOIN buyTbl B
    ON U.userID = B.userID
 ORDER BY U.userID

-- ����ȸ�� ���
SELECT U.userID, U.name, B.prodName, U.addr, U.mobile1+U.mobile2 AS [����ó]
  FROM userTbl U
  LEFT OUTER JOIN buyTbl B
    ON U.userID = B.userID
 WHERE B.prodName IS NULL
 ORDER BY U.userID;

 --�ǽ�7
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
  PRINT '@var1�� 100�̴�'
    END
   ELSE
  BEGIN 
  PRINT '@var1�� 100�� �ƴϴ�'
    END; 
