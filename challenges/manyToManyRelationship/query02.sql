-- Question: List the order dates in descending order for orders for the 1940 Ford Pickup Truck.
-- backticks is used to reference fieldnames in MySQL

SELECT `products`.`productName`, `o`.`orderDate` 
    FROM `products`
    INNER JOIN `orderdetails` `od` ON `products`.`productCode` = `od`.`productCode`
    INNER JOIN `orders` `o` ON `od`.`orderNumber` = `o`.`orderNumber`
    WHERE `products`.`productName` = "1940 Ford Pickup Truck"
    ORDER BY `o`.`orderDate` DESC;