/*12. Write a query using the Production.Product table displaying the product ID, color, and name columns. 
If the color column contains a NULL, replace the color with No Color*/
use AdventureWorks2022
select  productID, isnull(color,'nocolor') as newcolumn,name from   Production.Product