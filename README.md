# E-commerce Sales Analysis using MySQL

## About the Project

This is my first MySQL portfolio project, which I built to practise SQL on an e-commerce dataset.

The goal was to work with related tables, write SQL queries, and understand how sales data can be used to answer business questions.

I created a database with customer, product, order, and order item information, then used SQL to explore revenue, product sales, and customer spending.

## Tools Used
- MySQL
- MySQL Workbench
- GitHub

## Database Structure

The project contains four related tables:

- customers: Stores customer names, cities, and signup dates.
- products: Contains product names, categories, and prices.
- orders: Stores order dates, customer IDs, and order statuses.
- order_items: Contains product IDs, order IDs, quantities, and unit prices.

These tables are connected using primary keys and foreign keys.

## SQL Concepts Practised

While working on this project, I practised:

- SELECT, WHERE, and ORDER BY
- Aggregate functions such as SUM, AVG, and COUNT
- INNER JOIN and LEFT JOIN
- GROUP BY and HAVING
- Subqueries and NOT EXISTS
- Date-based analysis using DATE_FORMAT
- Ranking products using DENSE_RANK()

## What I Analysed

I wrote SQL queries to answer questions such as:

- What is the total revenue from completed orders?
- How does revenue change month by month?
- Which product categories generate the most revenue?
- Which products sell the most units?
- Which customers spend the most?
- Which cities generate the most revenue?
- Which products are priced above the average product price?
- Which completed orders have a value above the average order value?
- How do products rank based on their revenue?

## Key Learnings

This project helped me understand how multiple tables can be connected using JOINs and how aggregate functions can summarise sales data.

I also practised using GROUP BY, subqueries, and window functions to solve different analytical problems.

Working through the queries helped me become more comfortable with writing SQL and understanding the results.

## Project Files
01_schema.sql — Creates the database and tables.
02_sample_data.sql — Inserts the sample data.
03_analysis_queries.sql — Contains the SQL analysis queries.

## How to Run the Project
Open MySQL Workbench and connect to your MySQL server.
Run 01_schema.sql to create the database and tables.
Run 02_sample_data.sql to insert the sample records.
Run 03_analysis_queries.sql to execute the analysis queries.

Make sure the schema and sample data scripts are executed before running the analysis queries.

## Dataset Information

The dataset is synthetic and was created for learning and portfolio purposes. It does not represent real customers or actual business transactions.

## Key Findings

This section will summarise the results obtained from running the SQL queries, including the highest-revenue category, top-selling products, and leading customer or city by completed sales.

## What's Next?

I plan to continue practising SQL and work on more data analysis projects to strengthen my problem-solving skills.

Project: E-commerce Sales Analysis
Database: MySQL
Purpose: SQL practice and portfolio development
