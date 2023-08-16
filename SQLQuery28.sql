/*Write a query that returns all the rows from the Sales.SalesPerson table joined to the 
Sales.SalesOrderHeader table along with the SalesOrderID column even if no orders match. Include 
the SalesPersonID, SalesYTD, and SalesOrderID columns in the results.*/
use AdventureWorks2022
select sp.SalesYTD,soh.SalesPersonID, soh.SalesOrderID from Sales.SalesPerson as sp
left  join Sales.SalesOrderHeader as soh on 
sp.BusinessEntityID=soh.SalesOrderID
