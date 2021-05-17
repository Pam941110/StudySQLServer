WITH empCTE (empName, mgrName,dept,level)
AS
(
	SELECT emp, manager, department,0 FROM empTbl
	 WHERE manager IS NULL
	UNION ALL
	SELECT empTbl.emp, empTbl.manager, empTbl.department, empCTE.level+1
	  FROM empTbl
     INNER JOIN empCTE
	    ON empTbl.manager = empCTE.empName
)
SELECT * FROM empCTE ORDER BY dept, level;