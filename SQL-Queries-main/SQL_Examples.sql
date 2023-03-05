1. SELECT: Selects data from a database table

SELECT column1, column2, ... 
FROM table_name;

SELECT name, age 
FROM customers;

2. WHERE: Filters data based on specified conditions

SELECT column1, column2, ... 
FROM table_name
WHERE condition;

SELECT name, age 
FROM customers 
WHERE age > 30;
3. ORDER BY: Sorts data in ascending or descending order based on specified columns

SELECT column1, column2, ... 
FROM table_name 
ORDER BY column_name ASC|DESC;

SELECT name, age 
FROM customers 
ORDER BY age DESC;

4. GROUP BY: Groups data based on specified columns

SELECT column1, column2, ... 
FROM table_name 
GROUP BY column_name;

SELECT country, COUNT(*) 
FROM customers 
GROUP BY country;

5. JOIN: Combines rows from two or more tables based on a related column

SELECT column1, column2, ... 
FROM table1 
JOIN table2 
ON table1.column_name = table2.column_name;

SELECT customers.name, orders.order_date 
FROM customers 
JOIN orders 
ON customers.customer_id = orders.customer_id;

--These are just a few of the most common SQL queries. SQL has a wide range of functions and operators that can be used to manipulate and analyze data in a database.