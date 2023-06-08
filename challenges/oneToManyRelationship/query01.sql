-- Report the account representative for each customer
-- backticks is used to reference fieldnames in MySQL

USE `classicmodels`;
SELECT `customerName`, CONCAT(`e`.`lastName`, " ", `e`.`firstName`) AS `Account Representative`
    FROM `customers`
    JOIN `employees` `e` ON `customers`.`salesRepEmployeeNumber` = `e`.`employeeNumber`;