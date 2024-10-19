The Pizza Sale Report is based on MY SQL Queries and Power bi Dashboard. 
This Project divide into two Parts.

In the first part we fulfill KPI's Requirements.
We need to analyze Key Indicators  for our pizza sales data to gain insights to our business performance. Specifically, we want to calculate the following metrics:
1. Total Revenue - The sum of the total price of all pizza orders.
2. Average Order Value - The average amount spent per order, calculated by dividing the total revenue by the number of orders.
3. Total Sold Pizza - The sum of the quantity of all pizza sold.
4. Total Orders - The total number of order placed.
5. Average Pizza Per Order - The average number of pizza sold per order,calculating by dividing the total number of pizza sold by the total number of orders.

In the second part we fulfill Charts Requirements.
We would like to visualize various aspects of our pizza sales data to gain insights and understand key trends. We have identified the following requirements for creating charts:
1. Daily Trend for Total Orders - Create a bar chart that Displays the daily trend of total orders over a specific time period. This chart will help us identify any patterns and fluctutions in order volumes on a daily basis.
2. Monthly Trend for Total Orders - Create a line chart that illustrate the hourly trend of total orders throughout the day. This chart will allow us to identify peak hours or periods of high orders activity.
3. Percentage of Sales by Pizza Category - Create a pie chart that shows the distribution of sales across different pizza category. This chart will provide insights into the popularity of various pizza categories and their contribtion to overall sales.
4. Percentage of Sales by Pizza Size - Create a pie chart that shows the percentage of sales attribute to different pizza size. This chart will helps to understand customer preference for pizza size and their impact on sales.
5. Total Pizza Sold by Pizza Category - Create a funnel chart that shows the total number of pizza sold for each category. This chart will allow us to compare the sales performance of different pizza category.
6. Top 5 Best Sellers by Revenue, Total Quantity and Total Orders - Create a bar chart highlighting the top 5 best-selling pizzas based on Revenue, Total Quantity and Total Orders. This chart will help us to identify the most popular pizza option.
7. Bottom 5 Best Sellers by Revenue, Total Quantity and Total Orders - Create a bar chart highlighting the bottom 5 worst-selling pizzas based on Revenue, Total Quantity and Total Orders. This chart will help us to identify underperforming or less popular pizza option.

Intially we create new database in my sql and import our CSV file and start write queries.
In these queries we use various functions like COUNT, SUM, DISTINCT, DATENAME, MONTHNAME, GROUP BY, WHERE, ORDER BY, LIMIT, SUBQUERY etc.
And the result of these queries is use to compare with powerbi visuals for verification.

After that we make Dashboard in Power bi.
So intially we import our sql or csv file in power bi and clean our data through Power Query Editor.
In this we replace values if we need and change data types of column and Make new columns for our specific chart like Day number,Day name, Month number, Month name etc.
Also in the Creation of cards for visualization of KPI's we create Measures and put formulas for the calculations of KPI's.
After that for create a beautiful dashboard we use shapes, charts, and buttons and use format visual for making attractive visual of charts on dashboard.

INSIGHTS  
Busiest Days and Months - 
1. Orders are highest on weekends(friday and saturday evenings).
2. There are maximum orders from month of July and January.

Sales Performance - 
1. Classics category contributes to maximum sales and total orders.
2. Large size pizza contribute to maximum sales.

Best Sellers - 
1. The Thai Chiken Pizza contributes to maximum Revenue.
2. The Classic Deluxe Pizza contributes to maximum Total Quantities.
3. The Classic Deluxe Pizza contributes to maximum Total Orders.

Worst Sellers - 
1. The Brie Carre Pizza contributes to minimum Revenue.
2. The Brie Carre Pizza contributes to minimum Total Quantities.
3. The Brie Carre Pizza contributes to minimum Total Orders. 

