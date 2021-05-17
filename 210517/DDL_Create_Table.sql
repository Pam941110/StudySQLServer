--���̺� ����
CREATE TABLE ddlTbl 
(
	Id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

-- DDL�� ���̺� ����
ALTER TABLE ddlTbl ALTER COLUMN Id INT IDENTITY (1,1);

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl 
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

CREATE TABLE userTbl
(
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name NVARCHAR(10) NOT NULL,
	birthYear INT NOT NULL,
	height SMALLINT
);

CREATE TABLE buyTbl
(
	num INT NOT NULL PRIMARY KEY,
	userID CHAR(8) NOT NULL
	 FOREIGN KEY REFERENCES userTbl(userID),
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
);

-- DDL �� ���̻� �÷� PK�� ���� ���̺� ���� ��� 
CREATE TABLE prodTbl
(
	prodCode NCHAR(3) NOT NULL ,
	prodID NCHAR(4) NOT NULL ,
	prodDate DATETIME NOT NULL, 
	prodCur NCHAR(10) NULL
	CONSTRAINT PK_prodTbl_prodCode_prodID
		PRIMARY KEY (prodCode, prodID) 
);
GO

-- userTbl�� email(����ũ��������) �߰�
-- ����! ������ �����Ͱ� �������� ���� ��
ALTER TABLE userTbl
  ADD email VARCHAR(50) NOT NULL UNIQUE;
  