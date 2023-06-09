-- Question: How many orders have been placed by Herkku Gifts?
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT `c`.`customerName`, SUM(`orderdetails`.`quantityOrdered`) AS `No of Orders Placed`
    FROM `orderdetails`
    INNER JOIN `orders` `o` ON `orderdetails`.`orderNumber` = `o`.`orderNumber`
    INNER JOIN `customers` `c` ON `o`.`customerNumber` = `c`.`customerNumber`
    WHERE  `c`.`customerName`="Herkku Gifts";