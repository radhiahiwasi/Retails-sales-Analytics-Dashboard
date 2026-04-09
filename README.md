# Omnichannel Retails Sales and Inventory Analytics
##  1. Project Overview
This project focuses on building an end-to-end data analytics pipeline along with an interactive Business Intelligence (BI) dashboard to address these challenges. The solution integrates data from both Point of Sale (POS) systems and online sales platforms into a unified framework, enabling consistent and reliable analysis.
By processing raw transactional data, the system uncovers sales trends, seasonal patterns, and product-level insights. These insights help businesses optimize inventory management, reduce stock inefficiencies, and design more targeted marketing strategies.Overall, the project aims to provide a scalable, data-driven solution that enhances decision-making, improves operational efficiency, and supports the digital transformation of retail businesses.
##  2. Dashboard Preview
#### Sales & Performance Overview
<img width="1440" height="798" alt="Sales dashboard 1" src="https://github.com/user-attachments/assets/e4540050-e062-4d92-9f13-17c93b68fb7c" />


#### This dashboard provides a comprehensive overview of retail performance: 

#### Key KPIs: 

* Total Sales: 37.95M
* Total Orders: 1000
* Average Order Value: 37.95K
* Total Units Sold: 2.98K

#### Visual Insights: 
* Monthly sales trends showing seasonal peaks.
* Region-wise sales distribution.
* Channel performance comparison.
* Payment method analysis.
* Purpose: Helps stakeholders quickly monitor performance and identify trends.
#### Inventory & Product Insights
<img width="1444" height="798" alt="Sales Dashboard 2" src="https://github.com/user-attachments/assets/82e7d7f2-e7a2-4857-a80f-4727832caa3d" />

#### This dashboard focuses on product performance and inventory management: 

#### Key Features:
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

#### Explanation: 
* Data is collected from multiple sales channels.
* Python is used for cleaning and analysis.
* MySQL stores structured data for efficient querying.
* Power BI connects to the database for visualization.
* Final dashboards provide actionable business insights.

## 4. Tools & Technologies
#### Python 
* Data cleaning and preprocessing
* Exploratory Data Analysis (EDA)
* Libraries: Pandas, NumPy, Matplotlib, Seaborn

#### MySQL 
* Database design and management
* Structured querying of retail data

#### Power BI 
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

#### Key Insights 

<ins> Sales Distribution by Channel <ins>
  * Store: 255 orders
  * Mobile App: 251 orders
  * Marketplace: 250 orders
  * Online: 244 orders
* Sales are evenly distributed across all channels, indicating a well-balanced omnichannel strategy.

<ins> Customer Segmentation </ins>
  * Corporate: 354
  * Home Office: 327
  * Consumer: 319
* Corporate customers contribute slightly more transactions than other segments.

<ins> Regional Distribution </ins>
 * East: 266
 * North: 251
 * West: 249
 * South: 234
* Sales are fairly balanced geographically, with a slight lead in the East region.

<ins> Sales by Category </ins>

| Category     | Total Sales |
|--------------|------------|
| Electronics  | 28,362,000 |
| Furniture    | 5,874,000  |
| Accessories  | 1,804,000  |
| Footwear     | 1,036,000  |
| Clothing     | 872,000    |

* Electronics dominates sales, contributing the majority of revenue.
<ins> Correlation Analysis </ins>
  
* Correlation (Quantity Sold vs Sales Amount): 0.25

* Weak positive correlation indicates:
Revenue is driven more by unit price than sales volume
<ins> Inventory Insights </ins>
* Inventory and reorder levels are tracked for all products enables:

Stock optimization
Reorder alerts
Demand forecasting
<ins> Summary </ins>
* No data quality issues (clean dataset)
* Balanced performance across channels and regions
* Electronics is the primary revenue driver
* Corporate customers contribute the most transactions
* Sales are influenced more by pricing than volume
  
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






