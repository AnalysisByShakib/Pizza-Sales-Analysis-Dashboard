# Pizza Sales Analysis Dashboard 

A dynamic and interactive Power BI dashboard built using SQL and Power BI to analyze pizza sales performance, identify business trends, and generate actionable insights for data-driven decision making.

## Project Purpose
This project provides a single-pane view of pizza sales across stores, dates, products, and promotions. It helps Business management and analysts:

- Monitor revenue and order trends
- Identify top-selling pizzas and underperforming items
- Improve average order value
- Evaluate store and regional performance
- Improve marketing campaigns 
- Optimize inventory planning
- Support data driven decision making

The dashboard is intended for operations managers, marketing teams, and data analysts.

## Key Features & Insights
- High-level KPIs: Total Revenue(817.86K), Total Orders(21K),Total Pizza Sold(50k) Average Order Value (38.31),Average Pizza Price (16.49).
  These cards provide quick overview of business to understand how the business is performing without looking through thousands of transection.
- Sales by revenue: Large size veggie pizza generates the highest revenue(375.32K) and the average pizza price is (16.49) , xx large size pizza generates the lowest revenue(1.01K) and the average pizza price is (35.95) 
- Top products: Bestselling pizza is (The Thai Chicken Pizza), and the worst selling pizza is (The Brie Carre Pizza)
- Busiest Days :  Orders are highest on weekends ( Friday & Saturday)
- Busiest Months : Orders are highest on (July & Jan)
- Filtering : slice by order month and pizza category

## Tech Stack
- 🗄️ SQL Server — Data querying, aggregation, and analysis
- 📊 Power BI — Interactive dashboard and data visualization
- 🧮 DAX — KPI calculations and analytical measures
- 🔄 Power Query — Data cleaning and transformation
- 📈 Data Visualization & Business Intelligence

## Data Source & Schema
The pizza sales csv dataset used in the dashboard contain these columns:

- orders (order_id, order_date, order_time)
- products (product_id, product_name, product_category, product-size, product_quantity, product_ingredients, total_price, unit_price)
  
The dataset used in this project was sourced from a publicly available YouTube tutorial and is used for educational and portfolio purposes. It contains pizza order and sales-related information, which was analyzed using SQL and Power BI to identify sales trends, evaluate product performance, and generate key business insights.

## Recommended Analyses & Visuals
- KPI cards for revenue, orders, pizza sold, pizza price
- Column chart daily trend for total orders
- Line chart monthly trend for total orders
- Donut charts % of sales by pizza category
-  Donut charts % of sales by pizza category
- Funnel chart total pizza sold by pizza category
- Bar charts top & bottom pizza by revenue, quantity and orders
  
## Business Impact
- This dashboard transforms raw data into actionable business insights. It enables management to monitor sales performance, identify customer preference, optimize inventory, improve staffing decision and target marketing campaign using those insight the management can increase revenue, reduce optional costs and make faster data driven decision.

## Screenshots
https://github.com/AnalysisByShakib/Pizza-Sales-Analysis-Dashboard/commit/40a9cfb0a768d7552afd7549b5d147467b87154c



