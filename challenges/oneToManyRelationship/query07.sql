-- Question: Who are the employees in Boston?
-- backticks is used to reference fieldnames in MySQL


SELECT `e`.`employeeNumber`, CONCAT(`e`.`lastName`, " ", `e`.`firstName`) AS `fullName`, `offices`.`city`
    FROM `offices`
    INNER JOIN `employees` `e` ON `offices`.`officeCode` = `e`.`officeCode`
    WHERE `offices`.`city` = "Boston";	
