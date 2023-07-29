/*11. Write a query that returns data from the Person.Address table in this format AddressLine1 (City 
PostalCode) from the Person.Address table*/
use AdventureWorks2022
select
concat(AddressLine1,' ( ' ,city,PostalCode,'  )') as newaddressformat from
Person.Address