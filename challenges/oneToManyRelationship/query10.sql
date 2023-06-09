-- Question: Report the number of orders 'On Hold' for each customer.
-- backticks is used to reference fieldnames in MySQL

SELECT `c`.`customerName`, count(*) As 'Orders on Hold'
FROM `orders`
INNER JOIN `customers` `c` ON `orders`.`customerNumber` = `c`.`customerNumber`
WHERE `orders`.`status` = "On Hold"
GROUP BY `c`.`customerName`;