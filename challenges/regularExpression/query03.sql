-- Question: Report the number of customers in Denmark, Norway, and Sweden.
-- backticks is used to reference fieldnames in MySQL

SELECT `customerName`, `country`
FROM `customers`
WHERE `country` IN ("Denmark", "Norway", "Sweden");