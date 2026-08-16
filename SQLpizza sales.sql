--Pizza_sales analysis

--CREATE DATABASE
 USE [Pizza DB]

 --IMPORT DATASET
 SELECT * FROM Pizza_sales

--1 Total Revenue
SELECT SUM(total_price) as Total_Revenue
FROM pizza_sales

--2 Average Order Value
SELECT * 
FROM pizza_sales

SELECT SUM(total_price) / COUNT(DISTINCT order_id) as avg_order_value
FROM pizza_sales

--3 Total Pizza Sold
SELECT * 
FROM pizza_sales

SELECT SUM(quantity) as total_pizza_sold
FROM pizza_sales

--4 Total Orders
SELECT * 
FROM pizza_sales

SELECT COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales

--5 Avreage Pizza Per Order \ Average Price
SELECT * 
FROM pizza_sales

SELECT AVG(unit_price) as avg_price
FROM pizza_sales


SELECT CAST(SUM(quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) as avg_pizza_per_order
FROM pizza_sales

--6 Daily Trend For Total Orders
SELECT * 
FROM pizza_sales

SELECT DATENAME(WEEKDAY,order_date) as order_day,
COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY,order_date),
DATEPART (WEEKDAY,order_date)
ORDER BY DATEPART (WEEKDAY,order_date);

--7 Monthly Trend For Total Orders
SELECT * 
FROM pizza_sales  

SELECT DATENAME (MONTH,order_date) as order_day,
COUNT(DISTINCT order_id) as total_orders
FROM pizza_sales
GROUP BY DATENAME(MONTH,order_date),
DATEPART (MONTH,order_date)
ORDER BY DATEPART (MONTH,order_date);

--8 Percentage OF Sales by pizza Category
SELECT * 
FROM pizza_sales 

SELECT pizza_category,SUM(total_price) as total_sales,
SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date)=1) as sales_by_pizza_category
FROM pizza_sales
WHERE MONTH(order_date)=1
GROUP BY pizza_category

--9 Top 5 Bestseller By Revenue
SELECT * 
FROM pizza_sales 

SELECT TOP 5 pizza_name,sum(total_price) as total_revenue
FROM pizza_sales
Group BY pizza_name
ORDER BY total_revenue DESC

--10 Bottom 5 Bestseller By Revenue
SELECT * 
FROM pizza_sales 

SELECT TOP 5 pizza_name,sum(total_price) as total_revenue
FROM pizza_sales
Group BY pizza_name
ORDER BY total_revenue ASC

--11 Top 5 Bestseller By Quantity
SELECT * 
FROM pizza_sales

SELECT TOP 5 pizza_name,sum(total_price) as total_revenue
FROM pizza_sales
Group BY pizza_name
ORDER BY total_revenue DESC

--Average Pizza Price Per Order
SELECT * 
FROM pizza_sales

SELECT SUM(total_price)  /
COUNT(DISTINCT order_id)  as avg_pizza_prive_per_order
FROM pizza_sales



 
