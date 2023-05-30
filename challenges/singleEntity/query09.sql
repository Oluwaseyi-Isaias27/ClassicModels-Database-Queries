-- Question: What is the minimum payment received?
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT CONCAT("$", FORMAT(MIN(`amount`),2)) AS `minimumPayment`
    FROM `payments`;
