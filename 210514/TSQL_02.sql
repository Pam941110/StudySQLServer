--�ý����Լ�(SQL������ �⺻���� �������ִ� �Լ���)
SELECT CAST(AVG(CAST (amount AS FLOAT)) AS DECIMAL(4,3)) FROM buyTbl;

SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT); -- ���ܹ߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT); -- ����ȯ�� ���ϸ� ���������� ����ǰ� NULL �� ��ȯ 

--height�� SMALLINT �̱⶧���� VARCHAR, CHAR�� ����ȯ 
SELECT name, CAST(height AS varchar)+ 'cm' FROM userTbl
 WHERE height IS NOT NULL; 
 -- NULL���� =�� �� X // IS(����) // IS NOT(�����ʴ�)

 SELECT PARSE('2021�� 5�� 14�� 10�� 27��' AS DATETIME); 
 SELECT PARSE('2021-5-14 10:28:10' AS DATETIME); 

 SELECT GETDATE(); --INSERT ������ ��¥�� �ð� �� �� (���� ���)

 SELECT @@SERVERNAME;
 SELECT @@VERSION;

 --��¥ �� �ð��Լ�
 SELECT YEAR(GETDATE()) AS '����⵵';
 SELECT MONTH(GETDATE()) AS '�����';
 SELECT DAY(GETDATE()) AS '����';

 --��ġ�Լ�
 SELECT ABS(-100);
 SELECT ROUND(3.141592,2);
 SELECT FLOOR(RAND()*1000);
 SELECT RAND();

 --���Լ�
 SELECT IIF(100>200, '��','����');