SELECT e.FirstName || ' ' || e.LastName AS AgentName, c.FirstName || ' ' || c.LastName AS CustomerName, c.Country AS CustomerCountry, Total 
FROM Employee AS e
INNER JOIN Customer AS c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice
ON c.CustomerId = Invoice.CustomerId