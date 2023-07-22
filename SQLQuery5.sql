/*5. Write a query displaying the sales order ID, order date, and total due from the Sales.SalesOrderHeader 
table. Retrieve only those rows where the order was placed during the month of September 2012.*/
use AdventureWorks2022;
SELECT
salesorderID, orderdate,totaldue 
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2012-09-1' AND '2012-09-30' 