/*Write a query that shows the total number of items ordered for each product. Use the 
Sales.SalesOrderDetail table to write the query*/
use AdventureWorks2022
select 
SalesOrderID,sum(ProductID) as sum_of_product,sum(OrderQty)  sum_of_orderqty from Sales.SalesOrderDetail 
group by SalesOrderID
order by SalesOrderID
 