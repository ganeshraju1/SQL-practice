/*2. Write a query using the Sales.SalesOrderDetail table that displays a count of the detail lines for each 
SalesOrderID*/
use AdventureWorks2022
select
SalesOrderID,
count(linetotal) as  detail_lines from Sales.SalesOrderDetail
group by  SalesOrderID 