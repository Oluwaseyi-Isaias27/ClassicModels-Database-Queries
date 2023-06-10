-- Question: List products sold by order date 
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT `products`.`productCode`, `products`.`productName`, DAYNAME(`o`.`orderDate`) AS `Day Name`
    FROM `products`
    INNER JOIN `orderdetails` `od` ON `products`.`productCode` = `od`.`productCode` 
    INNER JOIN `orders` `o` ON `od`.`orderNumber` = `o`.`orderNumber`
    WHERE DAYNAME(`o`.`orderDate`) IN ("SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY");