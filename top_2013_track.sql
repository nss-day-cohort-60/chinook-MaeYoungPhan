with TopTracks as (
    SELECT
    t.Name AS TrackName, (t.TrackId) AS ID, 
    Count(Quantity) AS TotalPurchases
    FROM Track AS t
    JOIN InvoiceLine AS l
    ON t.TrackId = l.TrackId
    JOIN Invoice AS i
    ON l.InvoiceId = i.InvoiceId
    WHERE InvoiceDate LIKE "%2013%" 
    GROUP BY TrackName
    ORDER BY TotalPurchases DESC)

SELECT
TrackName, TotalPurchases
FROM TopTracks
WHERE (
    SELECT MAX(TotalPurchases)
    from TopTracks)
    =TotalPurchases

-- Alternate Solution
select 
	TrackCounts.Name, 
	TrackCounts.PurchaseCount
from (
	select t.Name, count(t.Name) as PurchaseCount
			from Track t
            join InvoiceLine l on l.TrackId = t.TrackId
			join Invoice i on l.InvoiceId = i.InvoiceId
			where STRFTIME('%Y', i.InvoiceDate) = "2013"
            group by t.Name
     ) TrackCounts 
	 join
     (
		select max(PurchaseCount) as MaxCount
      	from (
			select t.Name, count(t.Name) as PurchaseCount
			from Track t
            join InvoiceLine l on l.TrackId = t.TrackId
			join Invoice i on l.InvoiceId = i.InvoiceId
			where STRFTIME('%Y', i.InvoiceDate) = "2013"
            group by t.Name
			order by PurchaseCount desc
           ) TrackCounts
     ) Maxx
     on TrackCounts.PurchaseCount = Maxx.MaxCount
	 ;

SELECT *
FROM Track
WHERE Name Like "%Where Eagles Dare%"

SELECT * 
FROM InvoiceLine
WHERE TrackId = 1217