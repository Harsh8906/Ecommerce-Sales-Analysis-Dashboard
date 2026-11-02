CREATE DATABASE ecommercee;
Use ecommercee;

SELECT *
FROM orders;


SELECT 
COUNT(*) as Total_orders
FROM orders;

SELECT 
SUM(Net_Amount) AS Total_Sales 
FROM orders;

-- top product
SELECT 
Product , 
SUM(Net_Amount) AS Sales 
FROM orders 
GROUP BY Product 
ORDER BY Sales DESC;

-- TOP CITIES 
SELECT 
City , 
SUM(Net_Amount) AS Sales 
FROM orders
GROUP BY City 
ORDER BY Sales DESC;

-- MONTHLY SALES
SELECT 
Month , 
SUM(Net_Amount) AS Sales 
FROM orders
GROUP BY Month;

-- HIGHEST PROFIT
SELECT 
Product , 
SUM(Profit) AS Profit 
FROM orders
GROUP BY Product 
ORDER BY Profit DESC;


-- payment mode distribution
SELECT 
Payment_Mode , 
COUNT(*) AS Total_Orders
FROM orders
GROUP BY Payment_Mode ;

-- cancelled order 
SELECT * 
FROM orders
WHERE Order_Status = 'Cancelled';

SELECT * FROM orders
