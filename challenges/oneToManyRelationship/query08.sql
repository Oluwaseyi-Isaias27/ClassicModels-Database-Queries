-- Question: Report those payments greater than $100,000 , Sort the report so the customer who made the highest payment appears first.
-- backticks is used to reference fieldnames in MySQL

SELECT `c`.`customerName`, CONCAT("$", FORMAT(SUM(`payments`.`amount`), 2)) AS `Amount`
    FROM `payments`
    INNER JOIN `customers` `c` ON `payments`.`customerNumber` = `c`.`customerNumber`
    WHERE `payments`.`amount` > 100000
    GROUP BY `c`.`customerName`
    ORDER BY `c`.`customerName` DESC;