-- Question: List all payments greater than twice the average payments.
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT *
    FROM `payments`
    WHERE `amount` > (SELECT 2 * AVG(`amount`) FROM `payments`);