/* Write a query that assigns row numbers to the Production.Product table. Start the numbers over for 
each ProductSubCategoryID and make sure that the row numbers are in order of ProductID. Display 
only rows where the ProductSubCategoryID is not null*/
use AdventureWorks2022
SELECT
    ProductID,
    Name AS ProductName,
    ProductSubCategoryID,
    ROW_NUMBER() OVER(PARTITION BY ProductSubCategoryID ORDER BY ProductID) AS RowNumber
FROM
    Production.Product
WHERE
    ProductSubCategoryID IS NOT NULL
ORDER BY
    ProductSubCategoryID, ProductID;