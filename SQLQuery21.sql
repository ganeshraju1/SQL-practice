/* Write a query that displays the PersonType and the name columns from the Person.Person table. Sort 
the results so that rows with a PersonType of IN, SP, or SC sort by LastName. The other rows should 
sort by FirstName. Hint: Use the CASE expression*/
 use AdventureWorks2022
 select PersonType ,FirstName,MiddleName,LastName from Person.Person 
 order by case
 when  PersonType='IN'or PersonType='sp'or PersonType='sc' 
 then  LastName
 else FirstName
 end 
 