/*Using the Person.Person table, build the full names using the Title, FirstName, MiddleName, 
LastName, and Suffix columns. Check the table definition to see which columns allow NULL values and 
use the COALESCE function on the appropriate columns.*/
use AdventureWorks2022
select
Title,FirstName, MiddleName, 
LastName, Suffix,
concat( COALESCE(Title,''),coalesce( FirstName,''),coalesce( MiddleName,''), 
LastName,coalesce(Suffix,''))from Person.Person 