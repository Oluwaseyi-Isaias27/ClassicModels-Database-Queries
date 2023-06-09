-- Question: List the value of 'On Hold' orders
-- backticks is used to reference fieldnames in MySQL

SELECT DISTINCT(`orders`.`orderNumber`), `p`.`productName`, `orders`.`status`
    FROM `orders`
    INNER JOIN `orderdetails` `od` ON `orders`.`orderNumber` = `od`.`orderNumber`
    INNER JOIN `products` `p` ON `od`.`productCode` = `p`.`productCode`
    WHERE `orders`.`status` = "On Hold";