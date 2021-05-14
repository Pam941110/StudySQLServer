-- IF... ELSE...
-- SELECT * FROM HumanResources.Employee

DECLARE @hireDATE SMALLDATETIME
DECLARE @curDATE SMALLDATETIME
DECLARE @years DECIMAL(5,2)
DECLARE @days INT 

SELECT @hireDATE = HireDate
  FROM HumanResources.Employee
 WHERE BusinessEntityID = 111

 SET @curDATE = GETDATE()
 SET @years = DATEDIFF(year,@hireDATE,@curDATE)
 SET @days = DATEDIFF(day,@hireDATE,@curDATE)

  IF (@years >= 5)
  BEGIN 
  PRINT  '�Ի��� �� ' + CAST(@days AS NCHAR(5)) + '���̳� �������ϴ�.'
  PRINT  '�����մϴ�.'
  END
  ELSE 
  BEGIN 
  PRINT  '�Ի��� �� ' + CAST(@days AS NCHAR(5)) + '�Ϲۿ� �� �Ǿ��׿�.'
  PRINT  '������ ���ϼ���.'
  END
