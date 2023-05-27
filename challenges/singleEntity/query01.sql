-- Question : Prepare a list of offices sorted by country,state,city
-- backticks is used to reference fieldnames in MySQL

SELECT `territory` as 'Office Location'
  FROM offices
  ORDER BY `country`, `state`, `city`;
