-- Question: Find products containing the name 'Ford'.
-- backticks is used to reference fieldnames in MySQL

SELECT `productName` 
FROM `products`
WHERE `productName` LIKE "%Ford%";