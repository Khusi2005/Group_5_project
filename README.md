# 📦 Inventory Management System

A simple SQL-based Inventory Management System to track **products**, **suppliers**, and **sales transactions** efficiently.

---

## 🚀 Features

- Tracks all products with price, stock, and supplier details
- Manages supplier information
- Records sales transactions and updates inventory in real-time using SQL triggers
- Calculates:
  - Total sales by month
  - Most/least sold products
  - Top revenue-generating products
  - Suppliers with most products

---

## 🧱 Tech Stack

- **MySQL**
- **SQL Triggers**
- **SQL Joins & Aggregations**

---

## 📂 Database Schema

### 🧾 Tables:
- **Suppliers**: Stores supplier info (ID, name, contact)
- **Product**: Stores product info (ID, name, price, stock, linked supplier)
- **Sales**: Records sales (ID, product, quantity sold, sale date)

### 🔁 Trigger:
- `update_stock_after_sale`: Automatically updates stock after each sale.

---

## 📊 Sample Queries Implemented

1. List all low-stock products (stock < 10)
2. Get suppliers for a specific product
3. Calculate monthly sales
4. Identify top-selling and least-selling products
5. Track highest revenue product
6. Remove discontinued products (no longer linked to any supplier)
7. Get recent sales (last 7 days)
8. Find supplier providing the most products
9. Update stock after a sale

---

## 🛠️ How to Use

1. **Clone the repo** or copy the SQL scripts
2. Import into any MySQL environment (e.g.MySQL Workbench)
3. Run the `CREATE DATABASE` and `CREATE TABLE` scripts
4. Insert the sample data
5. Execute queries to test

---

