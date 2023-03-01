SELECT InvoiceLineId, InvoiceId, Name
FROM InvoiceLine AS l
Join Track
ON l.TrackId = Track.TrackId