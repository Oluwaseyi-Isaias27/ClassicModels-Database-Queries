-- Question: Report the name and city of customers who don't have sales representatives?
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT `customerName`, `city`, `salesRepEmployeeNumber`
    FROM `customers`
    WHERE `salesRepEmployeeNumber` IS NULL;	