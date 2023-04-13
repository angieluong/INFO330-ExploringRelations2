-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
select tracks.Name, artists.Name, invoice_items.* from invoice_items 
left join tracks on (tracks.TrackId = invoice_items.TrackId)
left join artists on (artists.Name = tracks.Composer);