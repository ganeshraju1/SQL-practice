/*Change the query in Question 5 so that only the products with the color blue or red are included*/
use AdventureWorks2022
select name,color
from Production.Product
group by name,color
having color='blue' or color='red'
