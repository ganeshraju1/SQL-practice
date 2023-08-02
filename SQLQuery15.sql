/*1. Write a query using the Production.Product table displaying a description with the ProductID: Name 
format*/
use AdventureWorks2022
select 
cast(ProductID as varchar )+': '+Name  as descriptionformat
from Production.Product