/*13. Write a query using the Sales.SalesOrderHeader table to display the orders placed during 2011 by 
using a function. Include the SalesOrderID and OrderDate columns in the results*/
use AdventureWorks2022
select  SalesOrderID , OrderDate from Sales.SalesOrderHeader
where year(OrderDate)=2011