/*3. Write a query using a WHERE clause that displays all the employees listed in the 
HumanResources.Employee table who have the job title “Research and Development Engineer.” 
Display the BusinessEntityID, the login ID, and the job title for each one*/use AdventureWorks2022;select
BusinessEntityID,
loginID,
JobTitle
from HumanResources.Employee
where JobTitle='Research and Development Engineer'