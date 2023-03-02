SELECT 
EmployeeFullName,
MAX(TotalSales2009) AS MaxSales2009
FROM (
    SELECT
    DISTINCT 
        e.FirstName || ' ' || e.LastName AS EmployeeFullName, 
        ROUND(SUM(Total), 2) AS TotalSales2009
    FROM Employee AS e
    INNER JOIN Customer AS c
    ON e.EmployeeId = c.SupportRepId
    JOIN Invoice
    ON c.CustomerId = Invoice.CustomerId
    WHERE InvoiceDate LIKE "%2009%" 
    GROUP BY c.SupportRepId)

/* Alternate Solution */
SELECT e.FirstName || ' ' || e.LastName AS EmployeeFullName, ROUND(SUM(Total), 2) AS TotalSales2009
FROM Employee AS e
INNER JOIN Customer AS c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice
ON c.CustomerId = Invoice.CustomerId
WHERE InvoiceDate LIKE "%2009%" 
GROUP BY c.SupportRepId
ORDER BY SUM(Total) DESC
LIMIT 1