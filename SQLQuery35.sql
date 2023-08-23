/* using cte join the Sales.SalesOrderHeader table to the Sales.SalesOrderDetail table. 
Display the SalesOrderID, OrderDate, and ProductID columns in the results. The 
Sales.SalesOrderDetail table should be inside common table expression*/
use AdventureWorks2022;
with sod AS( select  SalesOrderID, ProductID from Sales.SalesOrderDetail)
select soh.SalesOrderID,soh.OrderDate,sod.ProductID from Sales.SalesOrderHeader as soh
inner join sod on
soh.SalesOrderID=sod.SalesOrderID

