use AdventureWorks2022
select 
soh.SalesOrderID,
sp.SalesQuota,
sp.Bonus
from Sales.SalesOrderHeader as soh
join  Sales.SalesPerson as sp on
sp.BusinessEntityID=soh.SalesPersonID