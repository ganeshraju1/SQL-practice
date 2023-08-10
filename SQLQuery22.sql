/*The HumanResources.Employee table does not contain the employee names. Join that table to the 
Person.Person table on the BusinessEntityID column. Display the job title, birth date, first name, and 
last name*/
use AdventureWorks2022
select 
hre.JobTitle,
hre.birthdate,
p.firstname,
p.lastname from HumanResources.Employee as hre
inner join Person.Person as p on 
hre.BusinessEntityID=p.BusinessEntityID
