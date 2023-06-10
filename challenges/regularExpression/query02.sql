-- Question: List products ending in 'ship'.
-- backticks is used to reference fieldnames in MySQL

SELECT `productName`
FROM `products`
WHERE `productName` LIKE "%ship";