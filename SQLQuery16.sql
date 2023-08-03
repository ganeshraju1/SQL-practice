/*2. Write a query using the Sales.SpecialOffer table. Display the difference between the MinQty and 
MaxQty columns along with the SpecialOfferID and Description columns.*/
use AdventureWorks2022
select
SpecialOfferID,
Description,
MinQty-MaxQty as difference
from Sales.SpecialOffer
