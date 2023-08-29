/* Write a query that displays the count of orders placed by year for each customer using the 
Sales.SalesOrderHeader table*/
use AdventureWorks2022
select
count(CustomerID) as Each_Customer,year(OrderDate) as Order_Year from Sales.SalesOrderHeader
group by CustomerID,year(OrderDate)
order by CustomerID,Order_Year