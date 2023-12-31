/* Write a query using the Sales.SalesOrderDetail table to display a value (Under 10 or 10–19 or 20–29 
or 30–39 or 40 and over) based on the OrderQty value by using the CASE expression. Include the 
SalesOrderID and OrderQty columns in the results.*/
use AdventureWorks2022
select SalesOrderID ,OrderQty,
case
when  OrderQty<10 then 'under 10'
when  OrderQty>=10 and OrderQty<19 then '10–19'
when  OrderQty>=20 and OrderQty<29  then '20–29'
when  OrderQty>=30 and OrderQty<39 then '30–39'
else 'above 40'
end as result
from Sales.SalesOrderDetail

