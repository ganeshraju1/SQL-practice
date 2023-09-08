/*. Add the average total due for each customer to the query you wrote in Question 3*/
use AdventureWorks2022
select
customerid , TotalDue,
avg(TotalDue) over()as Entire_Avg,
avg(TotalDue) over(partition by customerid )as Each_CustomerAvg   from Sales.SalesOrderHeader