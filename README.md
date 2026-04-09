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
* Stock optimization
* Reorder alerts
* Demand forecasting

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
<h2> 7. Dashboard Insights</h2>

<h3> Key Performance Metrics</h3>
<ul>
  <li><b>Total Sales:</b> 37.95M</li>
  <li><b>Total Orders:</b> 1000</li>
  <li><b>Average Order Value (AOV):</b> 37.95K</li>
  <li><b>Total Units Sold:</b> 2.98K</li>
</ul>

<p> These KPIs provide a quick snapshot of overall business performance and revenue efficiency.</p>

<h3> Detailed Business Insights</h3>

<h4> 1. Sales Trend Analysis</h4>
<h4> Monthly Sales Analysis</h4>
<ul>
  <li>Peak Months: <b>March (~4.7M)</b>, <b>November (~4.6M)</b></li>
  <li>Lowest Month: <b>August (~2.4M)</b></li>
  <li>Moderate performance observed across remaining months</li>
</ul>
<p><b>Insight:</b> Sales show strong seasonality, likely driven by promotions, financial cycles, and festive demand.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Increase marketing spend during low-performing months</li>
  <li>Prepare inventory ahead of peak seasons</li>
</ul>

<h4> Quarterly Sales Analysis</h4>
<ul>
  <li><b>Q1 (Jan–Mar):</b> Strong growth driven by March peak</li>
  <li><b>Q2 (Apr–Jun):</b> Stable performance</li>
  <li><b>Q3 (Jul–Sep):</b> Lowest performance (dip in August)</li>
  <li><b>Q4 (Oct–Dec):</b> High performance due to festive and year-end demand</li>
</ul>
<p><b>Insight:</b> Q1 and Q4 contribute the highest revenue, while Q3 shows a slowdown.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Focus promotions and campaigns in Q3 to boost sales</li>
  <li>Maximize revenue opportunities in Q4 peak season</li>
</ul>
<h4> Daily Sales Patterns</h4>
<ul>
  <li>Sales vary across days with noticeable fluctuations</li>
  <li>Higher activity typically observed during weekends and promotional days</li>
  <li>Lower engagement on regular weekdays</li>
</ul>
<p><b>Insight:</b> Customer purchasing behavior is influenced by convenience and timing.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Launch weekend offers and flash sales</li>
  <li>Optimize staffing and operations based on peak days</li>
</ul>


<h4> 2. Regional Performance Analysis</h4>
<ul>
  <li>East: ~10.8M (highest)</li>
  <li>North: ~10.1M</li>
  <li>South: ~8.7M</li>
  <li>West: ~8.4M</li>
</ul>
<p><b>Insight:</b> East region consistently outperforms others.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Replicate strategies from high-performing regions</li>
  <li>Explore growth opportunities in weaker regions</li>
</ul>

<h3>🏬 Store Location & Customer Segment Insights</h3>

<h4>📍 Store Location-wise Sales Analysis</h4>
<ul>
  <li>Sales are distributed across multiple store locations with slight variations</li>
  <li>Certain locations contribute significantly higher revenue compared to others</li>
  <li>Delhi has the highest sales while hyderabad has lowest sales</li>
  <li>Urban or high-footfall locations tend to perform better</li>
</ul>
<p><b>Insight:</b> Store performance varies based on location, customer density, and demand patterns.</p>

<p><b>Business Impact:</b></p>
<ul>
  <li>Identify high-performing locations and replicate their strategies</li>
  <li>Improve marketing and operations in low-performing stores</li>
  <li>Optimize inventory allocation based on location demand</li>
</ul>

<h4> Customer Segment-wise Sales Analysis</h4>
<ul>
  <li><b>Corporate Segment:</b> Highest contribution to total transactions and revenue</li>
  <li><b>Home Office Segment:</b> Moderate contribution</li>
  <li><b>Consumer Segment:</b> Slightly lower but consistent participation</li>
</ul>

<p><b>Insight:</b> Corporate customers are the primary revenue drivers, indicating bulk or high-value purchases.</p>

<p><b>Business Impact:</b></p>
<ul>
  <li>Develop targeted offers and loyalty programs for corporate clients</li>
  <li>Expand B2B sales strategies</li>
  <li>Design personalized marketing for Home Office and Consumer segments</li>
</ul>
<h4> 3. Channel Performance Analysis</h4>
<ul>
  <li>Store: ~10.1M</li>
  <li>Online: ~9.7M</li>
  <li>Mobile App: ~9.6M</li>
  <li>Marketplace: ~8.5M</li>
</ul>
<p><b>Insight:</b> Physical stores slightly outperform, but digital channels are strong.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Maintain in-store experience</li>
  <li>Invest in digital scalability</li>
</ul>

<h4> 4. Payment Method Analysis</h4>
<ul>
  <li>UPI & Credit Cards dominate</li>
  <li>Cash usage is low</li>
</ul>
<p><b>Insight:</b> Strong shift toward digital payments.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Optimize digital checkout experience</li>
  <li>Offer incentives for online payments</li>
</ul>

<h4> 5. Product Performance Analysis</h4>
<ul>
  <li><b>Top Product:</b> Laptop (~19.98M)</li>
  <li>Followed by Smartphones & Office products</li>
</ul>
<p><b>Insight:</b> High-value electronics dominate revenue.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Focus on premium product marketing</li>
  <li>Ensure stock availability</li>
</ul>

<h4> 6. Category-Level Insights</h4>
<ul>
  <li>Electronics: ~28M+ (dominant)</li>
  <li>Other categories contribute less</li>
</ul>
<p><b>Insight:</b> Revenue heavily concentrated in one category.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Diversify product portfolio</li>
  <li>Boost underperforming categories</li>
</ul>

<h4> 7. Inventory & Stock Analysis</h4>
<ul>
  <li>Low stock products: Laptop, Jeans, Desk, Backpack</li>
</ul>
<p><b>Insight:</b> Risk of stockouts for high-demand items.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Improve inventory planning</li>
  <li>Automate reorder alerts</li>
  <li>Align stock with demand</li>
</ul>

<h4> 8. Sales Drivers Analysis</h4>
<ul>
  <li>Weak correlation between quantity and revenue</li>
</ul>
<p><b>Insight:</b> Revenue driven more by pricing than volume.</p>
<p><b>Business Impact:</b></p>
<ul>
  <li>Focus on pricing strategies</li>
  <li>Bundle high-value products</li>
  <li>Optimize margins</li>
</ul>

<h3> Overall Insight Summary</h3>
<ul>
  <li>Strong omnichannel performance</li>
  <li>Clear seasonal demand patterns</li>
  <li>High dependency on electronics</li>
  <li>Growth in digital payments</li>
  <li>Inventory risks in high-demand products</li>
  <li>Revenue driven by pricing</li>
</ul>

<h3> Strategic Recommendations</h3>
<ul>
  <li> Implement demand forecasting</li>
  <li> Optimize inventory with predictive models</li>
  <li> Focus on high-margin products</li>
  <li> Expand strategies across regions</li>
  <li> Encourage digital payments</li>
</ul>






