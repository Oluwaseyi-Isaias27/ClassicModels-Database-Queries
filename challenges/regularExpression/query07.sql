-- Question: List the products containing ship or boat in their product name.
-- backticks is used to reference fieldnames in MySQL

SELECT `productName`
FROM `products`
WHERE `productName` RLIKE "ship|boat";