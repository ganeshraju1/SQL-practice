/*Write a query that returns a count of detail lines in the Sales. SalesOrderDetail table by SalesOrderID. 
Include only those sales that have more than three detail lines*/
use AdventureWorks2022
select 
SalesOrderID,count(LineTotal) as  detail_lines from Sales. SalesOrderDetail
group by SalesOrderID
having count(LineTotal)>3
order by detail_lines
