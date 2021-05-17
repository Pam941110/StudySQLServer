-- SQL Programming 
DECLARE @var1 INT = 100
IF @var1 =100
BEGIN 
	PRINT '@var1�� 100�Դϴ�'
END
ELSE 
BEGIN
	PRINT '@var1�� 100�� �ƴմϴ�.'
END

-- �ǽ�8
WITH cte_custlevel ([����ھ��̵�], [ȸ����], [�ѱ��űݾ�], [�����])
AS
(
SELECT U.userID, U.name, SUM(price*amount) AS '���ž�',
  CASE 
	WHEN (SUM(price*amount) >=1500 ) THEN '�ֿ����'
	WHEN (SUM(price*amount) >=1000 ) THEN '�����'
	WHEN (SUM(price*amount) >=1 ) THEN '�Ϲݰ�'
	ELSE '���ɰ�'
   END AS '�����'
  FROM buyTbl B
 RIGHT OUTER JOIN userTbl U
    ON B.userID = U.userID
 GROUP BY U.userID, U.name
 --ORDER BY SUM(price*amount) DESC
 )
 SELECT [����ھ��̵�], [ȸ����]
      , FORMAT([�ѱ��űݾ�], 'C4') AS '���űݾ�'-- '#,#' 'C4' 
	  , [�����] 
   FROM cte_custlevel
  ORDER BY [�ѱ��űݾ�] DESC; 