-- Question: What are the names of executives with VP or Manager in their title? Use the CONCAT function to combine
-- the employees's first name and last name into a single field for reporting.
-- backticks is used to reference fieldnames in MySQL

-- USE `classicmodels`;
SELECT CONCAT(`lastName`, " ", `firstName`) AS `fullName`, `jobTitle`
    FROM `employees`
    WHERE `jobTitle` LIKE "%VP%" OR `jobTitle` LIKE "%Manager%";