/*3. Extend the query written in Question 2 to include the Sales. SalesOrderHeader table. Display the 
SalesOrderID column along with the columns already specified. The Sales.SalesOrderHeader table 
joins the Sales.Customer table on CustomerID. */
use AdventureWorks2022
select soh.SalesOrderID, sc.CustomerID, sc.StoreID,sc.TerritoryID,p.FirstName,p.MiddleName,p.LastName from Sales.Customer as sc
join  Person.Person as p on 
p.BusinessEntityID=sc.PersonID
join Sales.SalesOrderHeader as soh on 
sc.CustomerID=soh.CustomerID


