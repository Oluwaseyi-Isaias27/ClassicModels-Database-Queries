-- Question: Report the products that have not been sold 
-- backticks is used to reference fieldnames in MySQL

SELECT * FROM `products`
    WHERE NOT EXISTS (SELECT * FROM `orderdetails` 
					      WHERE `products`.`productCode` = `orderdetails`.`productCode`);
