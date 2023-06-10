-- Question: Which customers have a digit in their name?
-- backticks is used to reference fieldnames in MySQL

SELECT `customerName`
FROM `customers`
WHERE `customerName` RLIKE "[0-9]";