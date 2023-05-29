-- Question: How many products in each product line?
-- backticks is used to reference fieldnames in MySQL

SELECT `productLine`, COUNT(*) AS `numberOfProducts`
    FROM `products`
    GROUP BY `productLine`
    ORDER BY `numberOfProducts` DESC;
