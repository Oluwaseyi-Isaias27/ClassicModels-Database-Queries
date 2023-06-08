-- Question: Report the total payments for Atelier graphique
-- backticks is used to reference fieldnames in MySQL

SELECT `c`.`customerName`, CONCAT("$", FORMAT(SUM(`amount`), 2)) AS `totalPayment`
    FROM `payments`
	JOIN `customers` `c` ON `payments`.`customerNumber` = `c`.`customerNumber` 
    WHERE `c`.`customerName`= "Atelier graphique" 
    GROUP BY `c`.`customerName`;
    