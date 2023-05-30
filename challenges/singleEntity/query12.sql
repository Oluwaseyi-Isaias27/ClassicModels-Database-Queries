-- Question: How many distinct products does ClassicModels sell?
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT COUNT(DISTINCT `productName`)  AS `numberOfDistinctProduct`
    FROM `products`;