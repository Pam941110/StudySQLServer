SELECT * FROM userTbl
 WHERE name ='������';

 -- ����⵵��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl 
 ORDER BY birthYear;

 --SELECT INTO
 -- PK Ű������ �̻���
 SELECT * INTO userTbl_New FROM userTbl;
 SELECT * FROM userTbl_New;

 SELECT userID, name, addr INTO userTbl_Back2 FROM userTbl
  WHERE addr = '����';

 SELECT * FROM userTbl_Back;

 SELECT * FROM userTbl_Back2;