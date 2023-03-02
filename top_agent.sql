SELECT 
EmployeeFullName,
MAX(TotalSales) AS MaxSales
FROM (
    SELECT
    DISTINCT 
        e.FirstName || ' ' || e.LastName AS EmployeeFullName, 
        ROUND(SUM(Total), 2) AS TotalSales
    FROM Employee AS e
    INNER JOIN Customer AS c
    ON e.EmployeeId = c.SupportRepId
    JOIN Invoice
    ON c.CustomerId = Invoice.CustomerId
    GROUP BY c.SupportRepId)