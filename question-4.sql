-- Which sales agent made the most in sales in 2010?
select employees.FirstName, employees.LastName, sum(invoices.Total) from invoices 
join customers on (customers.CustomerId = invoices.CustomerId) 
join employees on (employees.EmployeeId = customers.SupportRepId) 
where InvoiceDate between '2010-01-01' and '2010-12-31' 
group by employees.FirstName, employees.LastName limit 1;