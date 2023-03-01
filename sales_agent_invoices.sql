SELECT e.FirstName || ' ' || e.LastName AS FullName, InvoiceId 
FROM Employee AS e
INNER JOIN Customer AS c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice
ON c.CustomerId = Invoice.CustomerId