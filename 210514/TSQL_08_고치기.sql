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
  PRINT  '입사한 지 ' + CAST(@days AS NCHAR(5)) + '일이나 지났습니다.'
  PRINT  '축하합니다.'
  END
  ELSE 
  BEGIN 
  PRINT  '입사한 지 ' + CAST(@days AS NCHAR(5)) + '일밖에 안 되었네요.'
  PRINT  '열심히 일하세요.'
  END
