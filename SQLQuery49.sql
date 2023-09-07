/*3. Write a query returning the SalesOrderID, OrderDate, CustomerID, and TotalDue from the 
Sales.SalesOrderHeader table. Include the average order total over all the results. */
use AdventureWorks2022
SELECT
SalesOrderID, OrderDate, CustomerID,TotalDue,
avg(TotalDue) over()  as Result
from Sales.SalesOrderHeader