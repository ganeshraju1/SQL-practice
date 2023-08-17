/*The Sales.SalesOrderHeader table contains foreign keys to the Sales.CurrencyRate and 
Purchasing.ShipMethod tables. Write a query joining all three tables, and make sure it contains all 
rows from Sales.SalesOrderHeader. Include the CurrencyRateID, AverageRate, SalesOrderID, and 
ShipBase columns*/
use AdventureWorks2022
select 
cr.CurrencyRateID,
cr.AverageRate,
soh.SalesOrderID,
ps.ShipBase
from Sales.SalesOrderHeader as soh
left join Sales.CurrencyRate as cr on
soh.CurrencyRateID=cr.CurrencyRateID
left join Purchasing.ShipMethod as ps on
soh.ShipMethodID=ps.ShipMethodID
