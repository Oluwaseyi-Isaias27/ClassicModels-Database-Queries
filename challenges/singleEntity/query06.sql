-- Question: Report those payments greater than $100,000.
-- backticks is used to reference fieldnames in MySQL

SELECT * FROM `payments`
	WHERE `amount`>100000;