-- Question: What is the quantity on hand for products listed on 'On Hold' orders?
-- backticks is used to reference fieldnames in MySQL

SELECT DISTINCT `products`.`productName`, `o`.`status`, `products`.`quantityInStock` 
    FROM `products`
    INNER JOIN `orderdetails` `od` ON `products`.`productCode` = `od`.`productCode`
    INNER JOIN `orders` `o` ON `od`.`orderNumber` = `o`.`orderNumber`
    WHERE `o`.`status` = "On Hold"
    ORDER BY `products`.`quantityInStock` DESC;
