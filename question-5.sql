-- What was the most purchased track of 2013?
select tracks.Name, tracks.Composer, invoices.InvoiceDate, sum(invoice_items.Quantity) from tracks
join invoice_items on (tracks.TrackId = invoice_items.TrackId)
join invoices on (invoices.InvoiceId = invoice_items.InvoiceId)
where invoices.InvoiceDate between '2013-01-01' and '2013-12-31'
group by tracks.TrackId
order by sum(invoice_items.Quantity) desc;