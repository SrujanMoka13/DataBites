# Awesome Chocolates 🍫 Database Analysis 

This repository contains a collection of simple and complex SQL queries designed to analyze the Awesome Chocolates database. The project showcases a wide range of SQL query techniques, from basic operations to advanced data analysis, providing insights into the database's structure and content.

## Features

This project demonstrates the following SQL techniques:

- **Basic Queries:**
  - Data retrieval using `SELECT` statements.
  - Filtering records with the `WHERE` clause.
  - Sorting data with `ORDER BY` (ascending and descending order).
  
- **Intermediate Techniques:**
  - Using `BETWEEN`, `IN`, and `LIKE` operators for conditional filtering.
  - Applying built-in SQL functions like `YEAR()`, `WEEKDAY()`, etc.
  - Creating calculated fields and renaming columns using `AS`.

- **Advanced Queries:**
  - Performing joins (`INNER JOIN`, `LEFT JOIN`, etc.) to combine data from multiple tables.
  - Grouping data with `GROUP BY` and performing aggregate functions (`SUM`, `AVG`, `COUNT`, etc.).
  - Implementing conditional logic with the `CASE` statement.
  - Writing queries with nested conditions and advanced filtering.

## Table Overview

### `sales`
- **Columns:** `SaleDate`, `Amount`, `GeoID`, `Customers`, `Boxes`
- Used for tracking sales transactions, including details about sales amount, geographic location, and the number of boxes sold.

### `people`
- **Columns:** `Salesperson`, `Team`, `Region`
- Tracks details of sales team members and their assigned regions.

## Sample Queries

- Retrieve all sales records:
  ```sql
  SELECT * FROM sales;

Filter sales where Amount > 10,000 and sort in descending order:

sql
Copy
Edit
SELECT * FROM sales WHERE Amount > 10000 ORDER BY Amount DESC;
Categorize sales amounts using a CASE statement:

sql
Copy
Edit
SELECT SaleDate, Amount,
    CASE
        WHEN Amount < 1000 THEN 'Under 1K'
        WHEN Amount < 5000 THEN 'Under 5K'
        ELSE '5K or More'
    END AS 'Amount Category'
FROM sales;
Join sales and people tables:

sql
Copy
Edit
SELECT s.SaleDate, s.Amount, p.Salesperson
FROM sales s
INNER JOIN people p ON s.GeoID = p.Region;

Use Cases
This project is useful for:

Learning SQL query writing, from basic to advanced levels.

Analyzing datasets for business intelligence or data analytics tasks.

Understanding database relationships and performing cross-table analysis

Use Cases
This project is useful for:

Learning SQL query writing, from basic to advanced levels.

Analyzing datasets for business intelligence or data analytics tasks.

Understanding database relationships and performing cross-table analysis.

How to Use
Clone the repository:

bash
Copy
Edit
git clone https://github.com/yourusername/awesome-chocolates-sql.git
Set up a MySQL database and import the provided schema/data.

Run the SQL queries in your preferred MySQL client or command-line interface.

Technologies Used
Database: MySQL

Query Language: SQL

Contributing
Contributions are welcome! Feel free to fork this repository and submit pull requests with additional queries, optimizations, or new features.

License
This project is licensed under the MIT License.

License
This project is licensed under the MIT License.
