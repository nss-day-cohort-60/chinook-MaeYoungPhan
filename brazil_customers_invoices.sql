SELECT FirstName || ' ' || LastName AS FullName, InvoiceId, InvoiceDate, BillingCountry FROM Invoice 
LEFT JOIN Customer
ON Invoice.CustomerId = Customer.CustomerId
WHERE BillingCountry IS "Brazil"