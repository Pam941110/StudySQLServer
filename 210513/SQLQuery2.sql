-- GROUP BY 
-- ���̵𺰷� ���� � ����� ��ȸ 
SELECT userID, SUM(amount) AS '�ѱ��Ű���'
  FROM buyTbl
 GROUP BY userID;

 -- �츮 ���θ����� ���� �� ���� �� �����
 -- ���̵𺰷� ��ȸ�ϰ� �� �ݾ��� ���� ����϶�
SELECT userID, SUM(amount*price) AS '�ѱ��űݾ�'
  FROM buyTbl
 GROUP BY userID
 ORDER BY SUM(amount*price) DESC; -- ORDER BY�� ���� �Լ� ��� ���� 

 SELECT userID, SUM(amount*price) AS '�ѱ��űݾ�'
  FROM buyTbl;

  -- ��ձ��űݾ�
  SELECT AVG(price) AS '��ձ��űݾ�' FROM buyTbl;

  -- ��������̺��� Ű�� ���� ū ����ϰ� ���� ���� ��� ��ȸ
  SELECT name AS '�̸�', height AS [Ű] FROM userTbl
   WHERE height = (SELECT MAX(height) FROM userTbl)
      OR height = (SELECT MIN(height) FROM userTbl)

 -- Having 
 SELECT userID AS '����ھ��̵�'
	  , SUM(price*amount) AS [�ѱ��űݾ�]
   FROM buyTbl
GROUP BY userID
HAVING SUM(price*amount) >= 1000;

-- ���
-- ��ǰ �׷캰�� ����ڰ� �󸶸�ŭ ���Ÿ� �ߴ��� ��ȸ
SELECT groupName
     , userID
	 , SUM (price*amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY ROLLUP( userID, groupName);

 