# Omnichannel Retails Sales and Inventory Analytics
##  1. Project Overview
This project focuses on building an end-to-end data analytics pipeline along with an interactive Business Intelligence (BI) dashboard to address these challenges. The solution integrates data from both Point of Sale (POS) systems and online sales platforms into a unified framework, enabling consistent and reliable analysis.
By processing raw transactional data, the system uncovers sales trends, seasonal patterns, and product-level insights. These insights help businesses optimize inventory management, reduce stock inefficiencies, and design more targeted marketing strategies.Overall, the project aims to provide a scalable, data-driven solution that enhances decision-making, improves operational efficiency, and supports the digital transformation of retail businesses.
##  2. Dashboard Preview
#### Sales & Performance Overview
<img width="1440" height="798" alt="Sales dashboard 1" src="https://github.com/user-attachments/assets/e4540050-e062-4d92-9f13-17c93b68fb7c" />


<b> This dashboard provides a comprehensive overview of retail performance: </b>

<b> Key KPIs: </b>

* Total Sales: 37.95M
* Total Orders: 1000
* Average Order Value: 37.95K
* Total Units Sold: 2.98K

<b> Visual Insights: </b>
* Monthly sales trends showing seasonal peaks.
* Region-wise sales distribution.
* Channel performance comparison.
* Payment method analysis.
* Purpose: Helps stakeholders quickly monitor performance and identify trends.
#### Inventory & Product Insights
<img width="1444" height="798" alt="Sales Dashboard 2" src="https://github.com/user-attachments/assets/82e7d7f2-e7a2-4857-a80f-4727832caa3d" />

<b> This dashboard focuses on product performance and inventory management: </b>

<b> Key Features:<b>
* Top-performing products by revenue.
* Location-wise sales insights.
* Low inventory alerts.
* Category-wise sales contribution.
* Purpose: Supports inventory optimization and product-level decision-making.

## 3. Data Flow Architecture
```text
Data Sources (POS Systems + Online Platforms)
                    ↓
        Data Cleaning & Preprocessing (Python)
                    ↓
     Exploratory Data Analysis (Python)
                    ↓
        Structured Storage (MySQL Database)
                    ↓
        Data Connection to Power BI
                    ↓
        Interactive Dashboard & Reports
                    ↓
            Business Insights & Decisions
```

<b> Explanation: </b>
* Data is collected from multiple sales channels.
* Python is used for cleaning and analysis.
* MySQL stores structured data for efficient querying.
* Power BI connects to the database for visualization.
* Final dashboards provide actionable business insights.

## 4. Tools & Technologies
<b> Python </b>
* Data cleaning and preprocessing
* Exploratory Data Analysis (EDA)
* Libraries: Pandas, NumPy, Matplotlib, Seaborn

<b> MySQL </b>
* Database design and management
* Structured querying of retail data

<b> Power BI </b>
* Dashboard creation and visualization
* Business intelligence reporting

## Exploratory Data Analysis (EDA)



###  Dataset Overview

This dataset contains transactional retail sales data including product details, customer segments, inventory levels, and sales performance.

* **Number of rows:** 1000
* **Number of columns:** 15

### Features:

| Column Name      | Description                         |
| ---------------- | ----------------------------------- |
| Order_ID         | Unique order identifier             |
| Order_Date       | Date of order                       |
| Channel          | Sales channel (Store, Online, etc.) |
| Store_Location   | Store location                      |
| Product_ID       | Product identifier                  |
| Product_Name     | Product name                        |
| Category         | Product category                    |
| Unit_Price       | Price per unit                      |
| Quantity_Sold    | Units sold                          |
| Sales_Amount     | Total sales value                   |
| Inventory_Level  | Current stock level                 |
| Reorder_Level    | Minimum stock threshold             |
| Customer_Segment | Customer type                       |
| Payment_Method   | Payment mode                        |
| Region           | Sales region                        |

---

###  Data Cleaning

* Identified and handled missing values in the dataset to ensure data consistency
* Removed or corrected inconsistent and duplicate records where necessary
* Converted data types (e.g., transforming Order_Date into datetime format)
* Standardized categorical values for uniformity across sources
* Created derived features such as:
* Total Sales (if not precomputed)
* Stock status (based on Inventory vs Reorder level)
* Converted `Order_Date` to datetime format

<b> Key Insights </b>
<ins> Sales Distribution by Channel <ins>
  * Store: 255 orders
  * Mobile App: 251 orders
  * Marketplace: 250 orders
  * Online: 244 orders
  
## Database & SQL Analysis
This project utilizes MySQL to store, manage, and analyze retail transaction data. A structured database is designed to enable efficient querying and generation of key business metrics (KPIs).

 ### Database Setup
* Created database: ominisales
* Imported dataset into table: omnichannel_retail_sales_inventory_dataset
### Data Cleaning Steps:
* Renamed incorrect column:
* ï»¿Order_ID → Order_ID
* Converted Order_Date to DATE format for time-based analysis



### Key SQL Analysis

The following key performance indicators (KPIs) were calculated using SQL:

* Total Sales
* Total Orders
* Average Order Value (AOV)
* Units Sold
* Month-over-Month (MoM) Growth
### Business Queries Implemented
* Monthly sales trends
* Top 10 performing products
* Sales distribution by region
* KPI aggregations for dashboard reporting

These queries serve as the backend for the Business Intelligence dashboard, enabling data-driven insights.

### How to Run
1. Create Database
CREATE DATABASE ominisales;
2. Import Dataset
Load the dataset into MySQL
Create table: omnichannel_retail_sales_inventory_dataset
3. Execute SQL Script
Ominichanel_retail_sales.sql;




