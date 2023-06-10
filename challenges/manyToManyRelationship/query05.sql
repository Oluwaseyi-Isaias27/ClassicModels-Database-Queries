-- Question: List the names of products sold at less than 80% of the MSRP.
-- backticks is used to reference fieldnames in MySQL

SELECT DISTINCT (`products`.`productName`), `products`.`MSRP` 
    FROM `products`
    INNER JOIN `orderdetails` `od` ON `products`.`productCode` = `od`.`productCode`
    WHERE `od`.`priceEach` < 0.8 * `products`.`MSRP`
    ORDER BY `products`.`MSRP` DESC;