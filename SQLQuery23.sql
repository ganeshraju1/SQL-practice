/*2. The customer names also appear in the Person.Person table. Join the Sales.Customer table to the 
Person.Person table. The BusinessEntityID column in the Person.Person table matches the PersonID 
column in the Sales.Customer table. Display the CustomerID, StoreID, and TerritoryID columns along 
with the name columns. */
use AdventureWorks2022
select 
sc.CustomerID, sc.StoreID,sc.TerritoryID, 
p.Firstname,p.MiddleName,p.LastName from Person.Person as p
inner join Sales.Customer as sc on 
sc.PersonID=p.BusinessEntityID
