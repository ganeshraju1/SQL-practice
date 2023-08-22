/*Using a derived table, join the Sales.SalesOrderHeader table to the Sales.SalesOrderDetail
table. 
Display the SalesOrderID, OrderDate, and ProductID columns in the results. The 
Sales.SalesOrderDetail table should be inside the derived table query.*/
use AdventureWorks2022
select soh.SalesOrderID,soh.OrderDate,sod.ProductID from Sales.SalesOrderHeader as soh
inner join 
(select * from Sales.SalesOrderDetail) as sod on 
soh.SalesOrderID=sod.SalesOrderID


