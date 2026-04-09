create database ominisales;
describe omnichannel_retail_sales_inventory_dataset;
Alter table omnichannel_retail_sales_inventory_dataset change ï»¿Order_ID  Order_ID varchar(10);
Alter table omnichannel_retail_sales_inventory_dataset change Order_Date Order_Date date;
-- Kpi Cards
-- 1. Total Sales 
SELECT 
   SUM(Sales_Amount) AS `Total Sales`
FROM
    omnichannel_retail_sales_inventory_dataset;

-- 2.Total Orders
SELECT 
    COUNT(DISTINCT Order_ID) AS `Total Orders`
FROM
    omnichannel_retail_sales_inventory_dataset;

-- 3.Average Order Value AOV
SELECT 
    SUM(Sales_Amount) / COUNT(DISTINCT Order_ID) AS ` Average Order Value`
FROM
    omnichannel_retail_sales_inventory_dataset;

-- 4. Units Solid
SELECT 
    SUM(Quantity_Sold) as `Units Sold`
FROM
    omnichannel_retail_sales_inventory_dataset;
    
-- 5. MoM Sales Growth
SELECT 
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS prev_month_revenue,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month)) 
        / LAG(revenue) OVER (ORDER BY month) * 100, 
        2
    ) AS mom_growth_pct
FROM (
    SELECT 
        DATE_FORMAT(Order_Date, '%M') AS month,
        SUM(Sales_Amount) AS revenue
    FROM omnichannel_retail_sales_inventory_dataset
    GROUP BY DATE_FORMAT(Order_Date, '%M')
) t;

-- Visuals

-- 1. Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%M') AS month,
    SUM(Sales_Amount) AS revenue
FROM
    omnichannel_retail_sales_inventory_dataset
GROUP BY month
ORDER BY month;

-- 2.Top 10 Products
SELECT 
    Product_Name,
    SUM(Sales_Amount) AS revenue
FROM
    omnichannel_retail_sales_inventory_dataset
GROUP BY Product_Name
ORDER BY sum(Sales_Amount) DESC
LIMIT 10;

-- 3. Sales By Region
SELECT 
    Region,
 SUM(Sales_Amount)  AS revenue
FROM
    omnichannel_retail_sales_inventory_dataset
GROUP BY Region;

-- 4.Customer Segment Contribution
SELECT 
    Customer_Segment,
    SUM(Sales_Amount) AS revenue
FROM
    omnichannel_retail_sales_inventory_dataset
GROUP BY Customer_Segment;

-- 5.Payment method analysis
SELECT 
    Payment_Method,
    COUNT(*) AS transactions,
    SUM(Sales_Amount) AS revenue
FROM
    omnichannel_retail_sales_inventory_dataset
GROUP BY Payment_Method;


-- 6.Low inventory Alert (give as table)
SELECT 
    Product_Name,
    Inventory_Level,
    Reorder_Level
FROM omnichannel_retail_sales_inventory_dataset
WHERE Inventory_Level <= Reorder_Level;

-- 7. Channel Perfomance
SELECT 
    Channel,
     SUM(Sales_Amount) AS revenue,
    COUNT(DISTINCT Order_ID) AS orders
FROM omnichannel_retail_sales_inventory_dataset
GROUP BY Channel;

-- 8. Sales by Store_location
SELECT 
    Store_Location,
    SUM(Sales_Amount) AS revenue
FROM
    omnichannel_retail_sales_inventory_dataset
GROUP BY Store_Location
order by revenue desc;