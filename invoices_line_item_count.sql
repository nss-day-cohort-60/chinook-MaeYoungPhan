Select InvoiceId, COUNT(*) AS TotalLineItems
From InvoiceLine
Group BY InvoiceId
ORDER BY InvoiceId ASC