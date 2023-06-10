-- Question: List the names of employees called Larry or Barry
-- backticks is used to reference fieldnames in MySQL

SELECT *
FROM `employees` 
WHERE "Larry" IN (`firstName`, `lastName`) OR "Barry" IN (`firstName`, `lastName`);