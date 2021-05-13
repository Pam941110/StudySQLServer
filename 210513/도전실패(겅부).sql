USE tempdb;
CREATE TABLE testTbl2
   (id int IDENTITY,
    userName nchar(3),
	age int,
	nation nchar(4) DEFAULT '대한민국');
GO
INSERT INTO testTbl2 VALUES ('지민', 25, DEFAULT);

SET IDENTITY_INSERT testTbl2 ON;
GO
INSERT INTO testTbl2(id, userName, age, nation) VALUES (11,'쯔위',18,'대만');
INSERT INTO testTbl2 VALUES (12,'사나',20, '일본');

SET IDENTITY_INSERT testTbl2 OFF;
INSERT INTO testTbl2 VALUES ('미나',21,'일본');
SELECT * FROM testTbl2;