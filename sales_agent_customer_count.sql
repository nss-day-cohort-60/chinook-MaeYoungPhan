SELECT e.FirstName || ' ' || e.LastName AS EmployeeFullName,
COUNT(c.CustomerId) AS TotalCustomers
FROM Employee AS e
LEFT JOIN Customer AS c
ON e.EmployeeId = c.SupportRepId
GROUP BY EmployeeFullName