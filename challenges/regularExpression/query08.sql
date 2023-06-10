-- Question: List the products with a product code beginning with S700
-- backticks is used to reference fieldnames in MySQL

SELECT `productCode`, `productName`
FROM `products`
WHERE LEFT(`productCode`, 4) LIKE "S700"
ORDER BY RIGHT(`productCode`, 4) ASC;