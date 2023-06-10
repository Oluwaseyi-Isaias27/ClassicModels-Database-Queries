-- Question: List the products ordered on a Monday
-- backticks is used to reference fieldnames in MySQL

SELECT `products`.`productName`, `o`.`orderDate`, DAYNAME(`o`.`orderDate`) AS `Day Name`
    FROM `products`
    INNER JOIN `orderdetails` `od` ON `products`.`productCode` = `od`.`productCode`
	INNER JOIN `orders` `o` ON `od`.`orderNumber` = `o`.`orderNumber`
    WHERE DAYNAME(`o`.`orderDate`) = "Monday";