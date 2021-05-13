SELECT * FROM userTbl
 WHERE name ='조용필';

 -- 출생년도순(오름차순)으로 정렬해서 조회
SELECT * FROM userTbl 
 ORDER BY birthYear;

 --SELECT INTO
 -- PK 키정보는 미생성
 SELECT * INTO userTbl_New FROM userTbl;
 SELECT * FROM userTbl_New;

 SELECT userID, name, addr INTO userTbl_Back2 FROM userTbl
  WHERE addr = '서울';

 SELECT * FROM userTbl_Back;

 SELECT * FROM userTbl_Back2;