/*6. Write a query with the same columns as Question 5. Include rows where the Total Due is $10,000 or 
more or the SalesOrderID is less than 43000*/
use AdventureWorks2022;
SELECT
salesorderID, orderdate,totaldue 
FROM Sales.SalesOrderHeader
WHERE totaldue >=10000 or salesorderID<43000.