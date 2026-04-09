# Omnichannel Retails Sales and Inventory Analytics
## Project Overview
This project focuses on building an end-to-end data analytics pipeline along with an interactive Business Intelligence (BI) dashboard to address these challenges. The solution integrates data from both Point of Sale (POS) systems and online sales platforms into a unified framework, enabling consistent and reliable analysis.
By processing raw transactional data, the system uncovers sales trends, seasonal patterns, and product-level insights. These insights help businesses optimize inventory management, reduce stock inefficiencies, and design more targeted marketing strategies.Overall, the project aims to provide a scalable, data-driven solution that enhances decision-making, improves operational efficiency, and supports the digital transformation of retail businesses.
## Dashboard Preview
#### Sales & Performance Overview
<img width="1440" height="798" alt="Sales dashboard 1" src="https://github.com/user-attachments/assets/cf79b3e5-fa30-4286-b89a-25f6bffbb1b7" />
<b>This dashboard provides a comprehensive overview of retail performance:</b>
<b>Key KPIs:</b>

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
<img width="1444" height="798" alt="Sales Dashboard 2" src="https://github.com/user-attachments/assets/76fe9cde-ca9c-4862-9039-ee9e3e582a2e"
<b> This dashboard focuses on product performance and inventory management: </b>

<b> Key Features:<b>

* Top-performing products by revenue.
* Location-wise sales insights.
* Low inventory alerts.
* Category-wise sales contribution.

* Purpose: Supports inventory optimization and product-level decision-making.
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

```python
df['Order_Date'] = pd.to_datetime(df['Order_Date'])
```

---

###  Univariate Analysis

### Categorical Variables

* **Channel:** 4 unique values (Store most frequent)
* **Customer Segment:** Corporate dominates
* **Payment Method:** Debit Card most common
* **Region:** East region has highest transactions

```python
df['Channel'].value_counts()
df['Customer_Segment'].value_counts()
df['Region'].value_counts()
```

### Numerical Variables

Summary statistics:

```python
df.describe()
```

Key observations:

* Sales vary based on both price and quantity
* Inventory levels vary significantly across products

---

###  Bivariate Analysis

### Sales Relationships

* `Sales_Amount = Unit_Price × Quantity_Sold`

```python
df[['Unit_Price','Quantity_Sold','Sales_Amount']].corr()
```

### Category vs Sales

```python
df.groupby('Category')['Sales_Amount'].sum().sort_values(ascending=False)
```

### Channel Performance

```python
df.groupby('Channel')['Sales_Amount'].sum()
```

---

### Time Series Analysis

```python
sales_trend = df.groupby('Order_Date')['Sales_Amount'].sum()
sales_trend.plot()
```

Insights:

* Identify peak sales periods
* Detect seasonality patterns

---

###  Inventory Analysis

```python
df['Stock_Status'] = df['Inventory_Level'] < df['Reorder_Level']
df['Stock_Status'].value_counts()
```

Insights:

* Products below reorder level indicate restocking needs

---

###  Regional Analysis

```python
df.groupby('Region')['Sales_Amount'].sum()
```

Insights:

* East region generates highest revenue

---

###  Customer Analysis

```python
df.groupby('Customer_Segment')['Sales_Amount'].sum()
```

Insights:

* Corporate segment contributes the most revenue

---

### Payment Analysis

```python
df['Payment_Method'].value_counts()
```

Insights:

* Debit cards are the preferred payment method

---

###  Key Insights

* Corporate customers are the primary revenue drivers
* East region shows strongest sales performance
* Sales are heavily influenced by quantity sold
* Some products are below reorder level → potential stock risk
* Store channel slightly dominates over others
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




