/*5. Add the name columns to the query written in Question 4 by joining on the Person.Person table. See 
whether you can figure out which columns will be used to write the join.*/
use AdventureWorks2022
select  soh.SalesOrderID,
p.firstname,p.MiddleName,p.LastName, 
sp.SalesQuota,sp.Bonus from  Sales.SalesOrderHeader as soh
join  Sales.SalesPerson as sp on 
soh.SalesPersonID=sp.BusinessEntityID
join Person.Person as p on 
p.BusinessEntityID=sp.BusinessEntityID

