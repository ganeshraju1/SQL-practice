/*Write a query that divides the customers into ten buckets based on the total sales for 2011.*/
USE AdventureWorks2022
SELECT
CustomerID,
sum(TotalDue) as Totalsales,
NTILE(10) over(order by CustomerID) as Ten_Buckets
from sales.SalesOrderHeader
where year(OrderDate)=2011
group by CustomerID