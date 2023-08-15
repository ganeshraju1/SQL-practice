/*Write a query that displays all the products along with the SalesOrderID even if an order has never 
been placed for that product. Join to the Sales.SalesOrderDetail table using the ProductID column*/
use AdventureWorks2022
SELECT P.ProductID, P.Name AS ProductName, S.SalesOrderID
FROM Production.Product AS P
LEFT JOIN Sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
LEFT JOIN Sales.SalesOrderHeader AS S ON SOD.SalesOrderID = S.SalesOrderID
ORDER BY P.ProductID, S.SalesOrderID


