# 📊 SQL Task 3 – Data Analysis Using SQL

This repository contains the SQL queries and output screenshots for **Task 3** of my Data Analytics Internship. The task focuses on analyzing the **Chinook database** using SQL.

## 📁 Folder Structure
task.3/ ├── Screenshots/ # Output screenshots of SQL query results ├── Task3_SQL_Queries.sql # SQL file containing all the queries used └── README.md # Project documentation

## 📝 Task Details

- 🔹 **Database Used:** Chinook.sqlite  
- 🔹 **Platform:** [sqliteonline.com](https://sqliteonline.com)  
- 🔹 **Language:** SQL  
- 🔹 **Objective:** Perform customer and invoice data analysis using SQL.

## 💻 Sample Queries

```sql
-- List all customers from Brazil
SELECT * FROM Customer WHERE Country = 'Brazil';

-- Count total invoices by billing country
SELECT BillingCountry, COUNT(*) AS TotalInvoices
FROM Invoice
GROUP BY BillingCountry;

{
Task 3: SQL for Data Analysis

Dataset: Sample Ecommerce SQL Database (or Chinook)
Tool Used: SQLite (DB Browser)

Queries covered:
1. SELECT, WHERE, ORDER BY, GROUP BY
2. INNER JOIN
3. Subqueries
4. Aggregate functions
5. Views
6. Indexes

Prepared by: [M Peer Mohammed]
}
