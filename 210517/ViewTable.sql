CREATE VIEW v_userTbl
AS
	SELECT userID, name, addr FROM userTbl
GO

SELECT * FROM v_userTbl;

-- ½Ç½À9
CREATE VIEW v_userbuyTbl
AS
	SELECT U.userID AS [USER ID], U.name AS [USER NAME], B.prodName AS [PRODUCT NAME],
		   U.addr, U.mobile1+U.mobile2 AS [MOBILE PHONE #]
	  FROM userTbl U
	 INNER JOIN buyTbl B
	    ON U.userID = B.userID
GO
SELECT [USER ID], [USER NAME] FROM v_userbuyTbl;

SELECT * FROM sys.sql_modules;

-- Step5
UPDATE v_userTbl 
   SET addr = 'ºÎ»ê'
 WHERE userID='JKW';
 SELECT * FROM v_userTbl;

 INSERT INTO v_userTbl(userID,name,addr) VALUES('KBM','±èº´¸¸','ÃæºÏ');

 -- Step6
 CREATE VIEW v_sum
 AS
	SELECT userID AS [userid], SUM(price*amount) AS [total]
	  FROM buyTbl
     GROUP BY userID
 GO
 SELECT * FROM v_sum

