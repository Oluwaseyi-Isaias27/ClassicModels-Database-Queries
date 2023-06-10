-- Question: List the names of employees with non-alphabetic characters in their names.
-- backticks is used to reference fieldnames in MySQL

SELECT CONCAT(`lastName`, " ", `firstName`) AS `Full Name`
FROM `employees`
WHERE CONCAT(`lastName`, " ", `firstName`) RLIKE "[0-9%@]";