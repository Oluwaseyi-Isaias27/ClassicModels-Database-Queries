-- Question: Report the total payments by date
-- backticks is used to reference fieldnames in MySQL

SELECT `paymentDate`, CONCAT("$", FORMAT(SUM(`amount`), 2)) AS `Amount`
    FROM `payments`
    GROUP BY `paymentDate`;	