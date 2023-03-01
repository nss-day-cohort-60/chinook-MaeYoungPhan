SELECT
    DISTINCT (strftime('%Y', InvoiceDate)) AS Year,
    SUM(total)
From Invoice
WHERE Year LIKE "%2009%" OR Year LIKE "2011%"
GROUP BY Year