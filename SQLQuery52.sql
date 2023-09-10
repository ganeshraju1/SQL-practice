SELECT
    SalesOrderID,
    OrderDate,
    CustomerID,
    TotalDue,
    AVG(TotalDue) OVER (ORDER BY OrderDate ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS MovingAverage
FROM
    Sales.SalesOrderHeader;
	SELECT
    SalesOrderID,
    OrderDate,
    CustomerID,
    TotalDue,
    AVG(TotalDue) OVER (ORDER BY OrderDate) AS MovingAverage
FROM
    Sales.SalesOrderHeader;



