-- ���ڿ� �Լ�
SELECT ASCII('A'), CHAR(66); -- ���� ��
SELECT UNICODE('��'), NCHAR(44032); -- ���� �� 

-- ���ڿ� ����
SELECT CONCAT('SQL ','SERVER ',2019) AS [name]; -- ���� ��
SELECT 'SQL ' + 'SERVER ' + CAST(2019 AS varchar); -- ����!

-- �ܾ� ������ġ
SELECT CHARINDEX('world','Hello world!');
-- c#, Java, python ���ڿ� 0���� ����
-- DB 1���� ����

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM 
DECLARE @STR VARCHAR(20);
SET @STR ='SQL SERVER 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('���ѹα�����!',5,2);

SELECT LEN('Hello World');
SELECT LEN('���ѹα�����!');

SELECT LOWER('hELLO World'), UPPER('hELLO World');
--CD1001, CD2005, cd2005
SELECT UPPER('cd2005');

-- �����̽� ���� �Լ�
SELECT '     SQL', LTRIM('     SQL'); --��
SELECT '     SQL     ', RTRIM('     SQL        '); --��
SELECT '     SQL     ', TRIM('     SQL        '); --�� 

-- Replace ���� �ֻ�
SELECT REPLACE('SQL Server 2019','server','����');

-- STR 
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT ���� ��
SELECT FORMAT (GETDATE(),'dd/MM/yyyy');
