-- Question: List the vendors whose name ends in Diecast
-- backticks is used to reference fieldnames in MySQL

SELECT `productVendor`
FROM `products`
WHERE `productVendor` LIKE "%Diecast";