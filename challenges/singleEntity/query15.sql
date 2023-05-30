-- Question: Which orders have a value greater than $5,000?
-- backticks is used to reference fieldnames in MySQL

SELECT `orderNumber`, SUM(`priceEach` * `quantityOrdered`) AS `value`
    FROM `orderdetails`
    GROUP BY `orderNumber`
    HAVING SUM(`priceEach` * `quantityOrdered`) > 5000
    ORDER BY `value`;