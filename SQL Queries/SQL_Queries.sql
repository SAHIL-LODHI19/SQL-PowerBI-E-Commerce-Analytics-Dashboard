 SELECT SUM(Revenue) AS Total_Revenue
FROM orders;

 SELECT SUM(Profit) AS Total_Profit
FROM orders;

 SELECT COUNT(Order_ID) AS Total_Orders
FROM orders;

SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM orders;

 SELECT AVG(Revenue) AS Average_Order_Value
FROM orders;
 
SELECT
ROUND((SUM(Profit)/SUM(Revenue))*100,2) AS Profit_Margin
FROM orders;

SELECT
Category,
SUM(Revenue) AS Total_Revenue
FROM orders
GROUP BY Category
ORDER BY Total_Revenue DESC;

 SELECT
DATE_FORMAT(Order_Date,'%Y-%m') AS Month,
SUM(Revenue) AS Total_Revenue
FROM orders
GROUP BY Month
ORDER BY Month;

SELECT
Payment_Method,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY Payment_Method;

SELECT
Delivery_Status,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY Delivery_Status;

SELECT
Product_Name,
SUM(Revenue) AS Total_Revenue
FROM orders
GROUP BY Product_Name
ORDER BY Total_Revenue DESC;

 SELECT
Category,
SUM(Quantity) AS Total_Quantity
FROM orders
GROUP BY Category;

SELECT
Category,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category;

SELECT
Category,
AVG(Discount_Percentage) AS Average_Discount
FROM orders
GROUP BY Category;

SELECT
Customer_ID,
SUM(Revenue) AS Total_Revenue
FROM orders
GROUP BY Customer_ID
ORDER BY Total_Revenue DESC
LIMIT 10;

 SELECT
Customer_Segment,
SUM(Revenue) AS Total_Revenue,
SUM(Profit) AS Total_Profit,
COUNT(Order_ID) AS Total_Orders,
AVG(Revenue) AS Average_Order_Value
FROM orders
GROUP BY Customer_Segment;

SELECT
Customer_Segment,
Payment_Method,
COUNT(Order_ID) AS Total_Orders
FROM orders
GROUP BY Customer_Segment, Payment_Method;