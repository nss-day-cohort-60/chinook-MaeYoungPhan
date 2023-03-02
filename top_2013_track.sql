SELECT t.Name AS TrackName, t.TrackId AS ID, 
Count(Quantity) AS TotalPurchases
FROM Track AS t
JOIN InvoiceLine AS l
ON t.TrackId = l.TrackId
JOIN Invoice AS i
ON l.InvoiceId = i.InvoiceId
WHERE InvoiceDate LIKE "%2013%"
GROUP BY TrackName
ORDER BY TotalPurchases DESC

SELECT *
FROM Track
WHERE Name Like "%Where Eagles Dare%"

SELECT * 
FROM InvoiceLine
WHERE TrackId = 1217