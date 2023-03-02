SELECT a.Name AS Artist,
Count(Quantity) AS TotalPurchases
FROM Track AS t
JOIN InvoiceLine AS l
ON t.TrackId = l.TrackId
Join Album AS b 
ON t.AlbumId = b.AlbumId
Join Artist AS a 
ON b.ArtistId = a.ArtistId
JOIN Invoice AS i
ON l.InvoiceId = i.InvoiceId
GROUP BY Artist
ORDER BY TotalPurchases DESC
LIMIT 3