
-- Task 3: SQL for Data Analysis - Chinook SQLite

-- 1. View first 10 customers
SELECT * FROM Customer LIMIT 10;

-- 2. Customers from Brazil
SELECT * FROM Customer WHERE Country = 'Brazil';

-- 3. Total invoices per country
SELECT BillingCountry, COUNT(*) AS TotalInvoices
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalInvoices DESC;

-- 4. Total revenue by country
SELECT BillingCountry, SUM(Total) AS Revenue
FROM Invoice
GROUP BY BillingCountry
ORDER BY Revenue DESC;

-- 5. Top 5 most purchased tracks
SELECT Track.Name, COUNT(*) AS PurchaseCount
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.TrackId
ORDER BY PurchaseCount DESC
LIMIT 5;

-- 6. Total number of employees by title
SELECT Title, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Title;

-- 7. Artists with most albums
SELECT Artist.Name, COUNT(*) AS AlbumCount
FROM Artist
JOIN Album ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.ArtistId
ORDER BY AlbumCount DESC
LIMIT 5;

-- 8. Average invoice total
SELECT AVG(Total) AS AverageInvoice
FROM Invoice;

-- 9. Create a view of top customers by total spend
CREATE VIEW Top_Customers AS
SELECT Customer.CustomerId, Customer.FirstName, Customer.LastName, SUM(Invoice.Total) AS TotalSpent
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId
ORDER BY TotalSpent DESC;

-- 10. Use the view to list top 5 spending customers
SELECT * FROM Top_Customers LIMIT 5;
