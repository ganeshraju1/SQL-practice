/*Write a query using the Sales.SalesOrderHeader, Sales.SalesOrderDetail, and Production.Product 
tables to display the total sum of products by Name and OrderDate*/
use AdventureWorks2022
select p.name ,sum(sod.OrderQty) as sum_of_products,soh.orderdate 
from Sales.SalesOrderHeader as soh
inner join Sales.SalesOrderDetail as sod on 
soh.salesorderid=sod.salesorderid
inner join Production.Product as p on
sod.productid=p.productid
group by p.name,soh.orderdate
order by p.name,soh.orderdate


