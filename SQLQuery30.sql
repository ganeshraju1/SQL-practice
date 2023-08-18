/*1. Using a subquery that includes the Sales.SalesOrderDetail table, display the product names and 
product ID numbers from the Production.Product table that have been ordered*/
use AdventureWorks2022
select name,ProductID from Production.Product
where productid in 
(select ProductID from Sales.SalesOrderDetail)