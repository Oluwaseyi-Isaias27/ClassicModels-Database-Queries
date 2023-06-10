-- Question: Reports those products that have been sold with a markup of 100% or more (i.e., the priceEach is at least twice the buyPrice)
-- backticks is used to reference fieldnames in MySQL

SELECT DISTINCT `products`.`productName`, 2 * `products`.`buyPrice` AS `Twice Buy Price`, `od`.`priceEach` 
    FROM `products`
    INNER JOIN `orderdetails` `od` ON `products`.`productCode` = `od`.`productCode`
    WHERE `od`.`priceEach` > 2 * `products`.`buyPrice`;