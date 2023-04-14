-- Show the sales agent's full name and invoices associated with each sales agent.
select employees.FirstName, employees.LastName, invoices.* from invoices 
join customers on (customers.CustomerId = invoices.CustomerId) 
join employees on (employees.EmployeeId = customers.SupportRepId);