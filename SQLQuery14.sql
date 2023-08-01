/*14. Write a query using the Sales.SalesOrderHeader table listing the sales in order of the month the order 
was placed and then the year the order was placed. Include the SalesOrderID and OrderDate columns 
in the results.select */
use AdventureWorks2022
select SalesOrderID ,OrderDate from Sales.SalesOrderHeader
order by month(OrderDate),YEAR(OrderDate)  
