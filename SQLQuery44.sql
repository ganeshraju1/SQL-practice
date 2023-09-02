/* 7. Write a query using the Sales.SalesOrderDetail table to come up with a count of unique ProductID 
values that have been ordered.
*/
use AdventureWorks2022;
select 
 ProductID,
count(*)
SalesOrderID
from  
Sales.SalesOrderDetail
group by ProductID