SELECT t.Name AS TrackName, t.TrackId AS ID, 
Count(Quantity) AS TotalPurchases
FROM Track AS t
JOIN InvoiceLine AS l
ON t.TrackId = l.TrackId
JOIN Invoice AS i
ON l.InvoiceId = i.InvoiceId
GROUP BY TrackName
ORDER BY TotalPurchases DESC
LIMIT 5