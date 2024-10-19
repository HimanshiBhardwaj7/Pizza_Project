
-- --Total Revenue


Select Round(SUM(total_price),2)as Total_Revenue 
from pizza_sales;


-- Average_Order_Value

Select ROUND(SUM(total_price)/COUNT(DISTINCT order_id),2) as Average_order_Value
from pizza_sales;


-- Total_Pizza_Sold

Select SUM(quantity) as Total_Pizza_Sold
from pizza_sales;


-- Total Order Placed

Select COUNT(DISTINCT order_id) as Total_Order_Placed
from pizza_sales;


-- Average pizza per order

Select SUM(quantity) / COUNT(DISTINCT order_id) as Avg_Pizza_Per_Order from pizza_sales;


-- Daily trends of total orders

SELECT DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS Order_Day, COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales 
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d'));

-- Monthly trends of total orders

SELECT MONTHNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS Order_Month, COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales 
GROUP BY MonthNAME(STR_TO_DATE(order_date, '%Y-%m-%d'));

-- Percentage of sales by pizza category

Select pizza_category, SUM(total_price) * 100 / (Select Sum(total_price) from pizza_sales) as Total_Pecentage_of_Sale
from pizza_sales
group by pizza_category;


-- Percentage sale by pizza size


Select pizza_size, SUM(total_price) * 100 / (Select Sum(total_price) from pizza_sales) as Total_Pecentage_of_Sale
from pizza_sales
group by pizza_size;

-- Total pizza sold by pizza category


Select pizza_category, SUM(quantity) as total_pizza_sold
from pizza_sales
group by pizza_category;


-- Top 5 best sellers by revenue

Select pizza_name, SUM(total_price) as total_revenue
from pizza_sales
group by pizza_name 
order by total_revenue desc
limit 5;


-- Bottom 5 best sellers by revenue


Select pizza_name, SUM(total_price) as total_revenue
from pizza_sales
group by pizza_name 
order by total_revenue asc
limit 5;


-- Top 5 best sellers by total orders

Select pizza_name, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by pizza_name 
order by total_orders desc
limit 5;

-- Bottom 5 best sellers by total orders

Select pizza_name, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by pizza_name 
order by total_orders asc
limit 5;

-- Top 5 best sellers by Quantity


Select pizza_name, sum(quantity) as total_quantity
from pizza_sales
group by pizza_name 
order by total_quantity desc
limit 5;

-- Bottom 5 best sellers by Quantity


Select pizza_name, sum(quantity) as total_quantity
from pizza_sales
group by pizza_name 
order by total_quantity asc
limit 5;

