/*4. Write a query displaying all the columns of the Production. ProductCostHistory table from the rows in 
which the standard cost is between the values of $10 and $13. */
use AdventureWorks2022;
SELECT * FROM Production. ProductCostHistory
WHERE standardcost>= 10 AND standardcost<=13