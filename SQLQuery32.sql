/*Write a query that displays the colors used in the Production.Product table that are not listed in the 
Production.ProductCostHistory table using a subquery. Use the keyword DISTINCT before the column name 
to return each color only once. Use the NOT EXISTS method in this query. */
use AdventureWorks2022
select DISTINCT p.color from Production.Product p
where exists (select  1 from Production.ProductCostHistory
where p.ProductID=ProductCostHistory.ProductID)

