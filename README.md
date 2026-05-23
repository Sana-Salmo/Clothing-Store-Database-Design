# Clothing Store Database Design using MySQL

This project presents a database design for a clothing store. The database was designed to manage important store information such as brands, clothing items, stores, customers, employees, and transactions.

The project started by writing a business case, then creating an ER diagram to represent the entities and relationships, and finally converting the design into MySQL tables using primary keys and foreign keys.

## Project Overview

The database is designed for an R.S clothing store. It supports managing store inventory and sales by organizing information about clothing brands, items, store locations, customers, transactions, and employees.

## Key Details

- **Course:** CS2071
- **Tools:** MySQL, MariaDB, ER Diagram, Database Design
- **Project Topic:** Clothing store database
- **Main Entities:** Brand, Item, Store, Customer, Employee, Transaction
- **Main Features:** Inventory management, sales/transaction tracking, customer records, employee records
- **Database Concepts:** Primary keys, foreign keys, entity relationships
- **Sample Data:** Inserted sample records into tables such as Brand, Item, Store, Customer, Transaction, and Employees
- **Main Goal:** Build an organized relational database to manage clothing store inventory and sales

## Business Case Summary

The database is based on a clothing store scenario with the following rules:

- Each brand has a unique brand ID and a brand name.
- A brand may produce multiple types of clothing such as shoes, t-shirts, and jackets.
- Every clothing item is produced by one brand.
- Each item stores details such as item ID, name, price, size, and color.
- Items may be sold in one or more stores.
- Each store has a store ID, name, and location.
- Each customer has a customer ID, name, and email address.
- A customer can purchase one or more items in a transaction.
- Each transaction has a transaction ID, date, and total cost.
- Employees work in stores and have employee IDs, names, and salaries.
- A store has one or more employees.

## Database Tables

The project includes the following main tables:

- `brand`
- `item`
- `store`
- `cus`
- `trans`
- `employees`

## Relationships

The database uses foreign keys to connect the tables:

- `item.brandID` references `brand.brandID`
- `item.storeID` references `store.storeID`
- `item.cusID` references `cus.cusID`
- `cus.transID` references `trans.transID`
- `store.employeesID` references `employees.employeesID`

## Sample Data

The database includes sample records such as:

- Brands: Nike, Zara
- Items: Air Max 90, Zara Sportswear Tee
- Stores: R.S clothes, R.S clothes2
- Customers: Jana Sroji, Sara Alhaj
- Employees: Rama Alkusair, Sana Rahmani
- Transactions: sample transaction IDs and total costs

## Files Included

- `REPORTE.docx` — Full project report including the business case, ER diagram explanation, MySQL implementation, sample inserted data, and conclusion.
- `Clothing store database.pdf` — ER diagram for the clothing store database.
- `final_data.sql` — SQL dump file for the `clothes_store` database.
- `final project data.txt` — MariaDB command log showing table creation, foreign keys, inserted data, update, select, and delete operations.

## How to Use

1. Open MySQL or MariaDB.
2. Create or select the database:

```sql
CREATE DATABASE clothes_store;
USE clothes_store;
```
3. Import the SQL file:
   
`SOURCE final_data.sql;`

4. View the tables and sample data using SQL queries such as:
`
SHOW TABLES;
SELECT * FROM brand;
SELECT * FROM item;
SELECT * FROM store;
SELECT * FROM cus;
SELECT * FROM trans;
SELECT * FROM employees;`

## Project Scope

This project demonstrates how a real business case can be transformed into a structured relational database system. It shows the use of ER modeling, table creation, primary keys, foreign keys, sample data insertion, and basic SQL operations for managing a clothing store database.

Authors

Sana Rahmani
Rama Alkusair


Effat University – CS 2071
