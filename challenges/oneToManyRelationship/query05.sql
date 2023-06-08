-- Question: List the amount paid by each customer 
-- backticks is used to reference fieldnames in MySQL

SELECT `o`.`customerNumber`, `customerName`,   CONCAT("$", FORMAT(SUM(`od`.`quantityOrdered` * `od`.`priceEach`), 2)) AS `Amount Paid`
    FROM `customers`
    INNER JOIN `orders` `o` ON `customers`.`customerNumber` = `o`.`customerNumber`
    INNER JOIN `orderdetails` `od` ON `o`.`orderNumber` = `od`.`orderNumber`
    GROUP BY `o`.`customerNumber`, `customerName`
    ORDER BY SUM(`od`.`quantityOrdered` * `od`.`priceEach`) DESC;