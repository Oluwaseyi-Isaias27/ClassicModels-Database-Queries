-- Question: List all the products purchased by by Herkku Gifts.
-- backticks is used to reference fieldnames in MySQL

SELECT `customerName`, `productName`
FROM `customers`
INNER JOIN `orders` `o` ON `customers`.`customerNumber` = `o`.`customerNumber`
INNER JOIN `orderdetails` `od` ON `o`.`orderNumber` = `od`.`orderNumber`
INNER JOIN `products` `p` ON `od`.`productCode` = `p`.`productCode`
WHERE `customerName` = "Herkku Gifts";