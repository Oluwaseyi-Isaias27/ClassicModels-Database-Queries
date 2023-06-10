-- Question: List the names of employees called Dianne or Diane.
-- backticks is used to reference fieldnames in MySQL

SELECT CONCAT(`lastName`, " ", `firstName`) AS `fullName`
FROM `employees`
WHERE CONCAT(`lastName`, " ", `firstName`) RLIKE "Diane|Dianne";