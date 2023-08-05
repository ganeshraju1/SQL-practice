/* 3. Write a query using the Sales.SpecialOffer table that multiplies the MaxQty column by the DiscountPct 
column. If the MaxQty value is NULL, replace it with the value 10. Include the SpecialOfferID and 
Description columns in the results.*/
use AdventureWorks2022
select 
SpecialOfferID, 
Description, 
MaxQty,
DiscountPct,
isnull(MaxQty,10) as newmaxqty,
DiscountPct*isnull(MaxQty,10) as RESULT
from Sales.SpecialOffer