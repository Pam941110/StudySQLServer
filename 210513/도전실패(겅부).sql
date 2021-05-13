USE tempdb;
CREATE TABLE testTbl2
   (id int IDENTITY,
    userName nchar(3),
	age int,
	nation nchar(4) DEFAULT '���ѹα�');
GO
INSERT INTO testTbl2 VALUES ('����', 25, DEFAULT);

SET IDENTITY_INSERT testTbl2 ON;
GO
INSERT INTO testTbl2(id, userName, age, nation) VALUES (11,'����',18,'�븸');
INSERT INTO testTbl2 VALUES (12,'�糪',20, '�Ϻ�');

SET IDENTITY_INSERT testTbl2 OFF;
INSERT INTO testTbl2 VALUES ('�̳�',21,'�Ϻ�');
SELECT * FROM testTbl2;