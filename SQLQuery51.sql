/* Write a query that returns the SalesOrderID, ProductID, and LineTotal from Sales.SalesOrderDetail. 
Calculate a running total of the LineTotal for each ProductID in order of SalesOrderID. Be sure to use 
the correct frame*/
use AdventureWorks2022;
select SalesOrderID, ProductID,LineTotal,
sum(LineTotal) over(partition by  ProductID order by SalesOrderID) as runningtotaleachProductID
from Sales.SalesOrderDetail