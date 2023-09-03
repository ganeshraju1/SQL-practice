/*Write a query joining the Person.Person, Sales.Customer, and Sales.SalesOrderHeader tables to 
return a list of the customer names along with a count of the orders placed*/use AdventureWorks2022SELECT
    CONCAT(p.FirstName, ' ', p.LastName) AS CustomerName,
    COUNT(soh.SalesOrderID) AS OrderCount
FROM
    Person.Person AS p
INNER JOIN
    Sales.Customer AS c ON p.BusinessEntityID = c.PersonID
LEFT JOIN
    Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
GROUP BY
    CONCAT(p.FirstName, ' ', p.LastName)
ORDER BY
    OrderCount DESC;
