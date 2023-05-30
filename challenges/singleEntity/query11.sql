-- Question: What is the average percentage markup of the MSRP on buyPrice?
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT AVG((`MSRP` - `buyPrice`) / `MSRP`) * 100 AS `averagePercentageMarkup`
    FROM `products`;