/*2. Using a subquery that includes the Sales.SalesOrderDetail table, display the product names and 
product ID numbers from the Production.Product table to display the products that have not been ordered
*/
use AdventureWorks2022
select name,ProductID from Production.Product
where productid  not in (select productid from Sales.SalesOrderDetail)
