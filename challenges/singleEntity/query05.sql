-- Question: Report total payments for October 28, 2004
-- backticks is used to reference fieldnames in MySQL

SELECT CONCAT("$", FORMAT(SUM(`amount`), 2)) AS `totalPayment`
	FROM 	`payments`
	WHERE `paymentDate`="2004-10-28";