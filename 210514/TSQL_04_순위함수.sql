-- �����Լ�
SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS [Ű����], name, height, addr
  FROM userTbl;

SELECT RANK() OVER(ORDER BY height DESC) AS [Ű����], name, height, addr
  FROM userTbl;

SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS [Ű����], name, height, addr
  FROM userTbl;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS [Ű����], name, height, addr
  FROM userTbl;