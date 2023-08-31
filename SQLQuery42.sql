/*Write a query that groups the products by ProductModelID along with a count. Display the rows that 
have a count that equals 1.*/
use AdventureWorks2022;
select ProductModelID ,
count(*)  as eachProduct from  Production.ProductModel
group by ProductModelID
having count(*)=1
