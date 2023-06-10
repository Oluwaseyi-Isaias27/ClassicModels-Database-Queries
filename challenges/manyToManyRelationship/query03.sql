-- Question: List the names of customers and their corresponding order number where a particular order from that customer has a value greater than $25,000 ?
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`
SELECT `customerName`, `o`.`orderNumber`, SUM(`od`.`quantityOrdered` * `od`.`priceEach`) AS `Value`
    FROM `customers`
    INNER JOIN `orders` `o` ON `customers`.`customerNumber` = `o`.`customerNumber`
    INNER JOIN `orderdetails` `od` ON `o`.`orderNumber` = `od`.`orderNumber`
    GROUP BY `customerName`, `o`.`orderNumber`
    HAVING `Value` > 25000
    ORDER BY `customerName`;

