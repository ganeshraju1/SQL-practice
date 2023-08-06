/*4. Write a query using the HumanResources.Employee table to display the BusinessEntityID column. Also 
include a CASE expression that displays Even when the BusinessEntityID value is an even number or 
Odd when it is odd. Hint: Use the modulo operator. */
use AdventureWorks2022
select BusinessEntityID,
case BusinessEntityID%2
when 0 then 'even'
when 1 then 'odd'
end as result
 from HumanResources.Employee
