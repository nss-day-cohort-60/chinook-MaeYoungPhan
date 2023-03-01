SELECT COUNT(*), strftime('%Y', InvoiceDate) AS "Year"
From Invoice
WHERE InvoiceDate LIKE "%2009%" OR InvoiceDate LIKE "2011%"
GROUP BY Year

