/*9. Write a query displaying the ProductID, Name, and Color columns from rows in the Production.Product 
table. Display only those rows in which the color is known not to be blue*/
use AdventureWorks2022;
select
ProductID, 
Name, 
Color from Production.Product 
where Color<>'blue' or color is null