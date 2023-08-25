/*9. Write a query that displays all customers along with the orders placed in 2011. Use a common table 
expression to write the query and include the CustomerID, SalesOrderID, and OrderDate columns in 
the results*/
use AdventureWorks2022;
with soh as(select * from sales.SalesOrderHeader)
select sc.CustomerID, soh.SalesOrderID,soh.OrderDate  from Sales.Customer as sc
inner join  soh on
sc.CustomerID=soh.CustomerID
where  year(OrderDate)='2011'

 