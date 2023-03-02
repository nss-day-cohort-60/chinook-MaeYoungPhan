SELECT m.MediaTypeId AS MediaTypeId, m.Name AS MediaType,
Count(Quantity) AS TotalPurchases
FROM Track AS t
JOIN InvoiceLine AS l
ON t.TrackId = l.TrackId
Join MediaType AS m 
ON t.MediaTypeId = m.MediaTypeId
JOIN Invoice AS i
ON l.InvoiceId = i.InvoiceId
GROUP BY m.MediaTypeId
ORDER BY TotalPurchases DESC
LIMIT 1