-- Question: List the product lines that contain 'Cars' 
-- backticks is used to reference fieldnames in MySQL

SELECT * 
	FROM `products`
    WHERE `productLine` LIKE "%Cars%";