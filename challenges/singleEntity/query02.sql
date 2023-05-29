-- Question: How many employees are there in the company?
-- backticks is used to reference fieldnames in MySQL

SELECT COUNT(*) AS `numberOfEmployees`
	FROM `employees`;