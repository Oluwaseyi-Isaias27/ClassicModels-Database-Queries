-- Question: What is the total of payments received?
-- backticks is used to reference fieldnames in MySQL

SELECT CONCAT("$", FORMAT(SUM(`amount`), 2)) AS `totalPayment`
	FROM `payments`;