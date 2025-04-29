Here's a breakdown of the SQL queries in your file, explained clearly for inclusion in a GitHub README file:

---

## 📘 SQL Query Explanations – `task6` Database Analysis

This script performs data analysis on an `online_shop` table within a database named `task6`. Below are the explanations for each SQL command used.

---

### 1. **Database Creation and Selection**
```sql
CREATE DATABASE task6;
USE task6;
```
- **Purpose:** Creates a new database named `task6` and sets it as the current database for subsequent operations.

---

### 2. **Previewing the Data**
```sql
SELECT * FROM online_shop;
```
- **Purpose:** Displays all records from the `online_shop` table.

---

### 3. **Extracting Month from Purchase Date**
```sql
SELECT EXTRACT(MONTH FROM purchase_date) AS purchase_month
FROM online_shop;
```
- **Purpose:** Retrieves the month part from the `purchase_date` for each record to understand when purchases occurred.

---

### 4. **Monthly Order Count**
```sql
SELECT EXTRACT(MONTH FROM purchase_date) AS purchase_month,
       COUNT(*) AS total_orders
FROM online_shop
GROUP BY EXTRACT(MONTH FROM purchase_date);
```
- **Purpose:** Counts the number of orders made each month, grouped by the purchase month.

---

### 5. **Total Revenue**
```sql
SELECT SUM(revenue_total) AS total_revenue
FROM online_shop;
```
- **Purpose:** Calculates the total revenue generated from all purchases.

---

### 6. **Counting Unique Customers**
```sql
SELECT COUNT(DISTINCT Customer_id) AS total_customer_ids
FROM online_shop;
```
- **Purpose:** Determines the number of unique customers based on `Customer_id`.

> ⚠️ Note: The file contains special characters (`ï»¿`) before `Customer_id`, which should be cleaned.

---

### 7. **Top 3 Highest Revenue Orders**
```sql
SELECT revenue_total
FROM online_shop
ORDER BY revenue_total DESC
LIMIT 3;
```
- **Purpose:** Retrieves the top 3 orders that generated the highest revenue.

---

### 8. **Top 5 Most Active Age Groups**
```sql
SELECT age, COUNT(*) AS top_age
FROM online_shop
GROUP BY age
ORDER BY top_age DESC
LIMIT 5;
```
- **Purpose:** Identifies the top 5 age groups that made the most purchases.

---

### 9. **Customer Purchase Frequency**
```sql
SELECT Customer_id, n_purchases
FROM online_shop
GROUP BY Customer_id, n_purchases
ORDER BY n_purchases DESC;
```
- **Purpose:** Lists each customer along with the number of purchases they made, sorted by the highest purchase frequency.

---
