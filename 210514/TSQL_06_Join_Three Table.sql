-- 3개 테이블 내부조인 
-- step2
SELECT S.stdName, S.addr, C.clubName, C.roomNo
  FROM stdTbl S
	INNER JOIN stdclubTbl SC
		ON S.stdName = SC.stdName
	INNER JOIN clubTbl C
		ON SC.clubName = C.clubName
 ORDER BY S.stdName;

 -- step3
SELECT C.clubName, C.roomNo, S.stdName, S.addr
  FROM stdTbl S
	INNER JOIN stdclubTbl SC
		ON SC.stdName = S.stdName
	INNER JOIN clubTbl C
		ON SC.clubName = C.clubName
 ORDER BY S.stdName;