# End-to-End-Analytics-Project
### Product Revenue & Pricing Analysis

### (SQL Server +Power BI Desktop + Power BI Service)

<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/ea399260-5169-48c6-9c18-ca09cb64c18f" />

## Project Overview
This project focuses on analyzing **product revenue, profit, and gross margin trends** to help management identify **low-margin products** and make informed **pricing or discontinuation decisions**.

The solution combines **SQL Server for data processing** and **Power BI for analytics and visualization**, following real-world enterprise BI best practices.

## Business Problem
Management observed a **decline in gross margins** due to rising costs (COGS, tariffs, operations).
<img width="746" height="409" alt="image" src="https://github.com/user-attachments/assets/ccfeac40-1915-44a0-afc5-9271f6717329" />
### Key Questions:
- Which products have **Gross Margin < 30%**?
- Should these products be **repriced or discontinued**?
- How do revenue and margin trends change **year over year**
### End-to-End Flow
**Excel Files → SQL Server → Power BI Dashboard**
1. CSV files loaded into **SQL Server (SSMS)**
2. Yearly tables merged using **SQL View (UNION ALL)**
3. Profit logic calculated at **database level**
4. Optimized data imported into **Power BI**
5. Insights delivered through interactive visuals
## Tech Stack
- SQL Server (Views, CTEs, Optimization)
- Power BI Desktop (Modeling, DAX, Visualization),Power BI Service
- Data Modeling (Star Schema)
- What-if Parameter KPI Selector
- **SQL QUERY**
<img width="1920" height="1020" alt="image" src="https://github.com/user-attachments/assets/6b9a6045-40e6-4c16-b2e1-5d20c8fcfe02" />
- Reduced duplication
- Centralized logic
- Optimized for Power BI Import mode
## Demonstrated Work
- **SQL Optimization**
    - Loaded yearly order data (2023–2025) into SQL Server
    - Created a **SQL View using UNION ALL** to merge data instead of physical tables
    - Calculated profit and rounded numeric values in SQL to reduce Power BI model size
- **Data Modeling**
    - Designed a **star schema** with fact and dimension tables
    - Removed redundant columns (Price, Base Cost) from fact tables
    - Created relationships using ProductID and CustomerID
- **Power BI & DAX**
    - Built reusable DAX measures for Revenue, Profit, Quantity, and Margin
    - Implemented a **dynamic KPI selector using SWITCH + SELECTEDVALUE**
    - Used bookmarks, slicers, KPI cards, and trend visuals for interactivity
- **Performance Best Practices**
    - Centralized logic in SQL views
    - Used measures instead of calculated columns
    - Optimized visuals for fast rendering

## QUICK VALIDATION QUERY

a Quick **ETL Validation** for the KPI Cards

**Sql Query**
**SELECT
SUM(Calculated_Revenue) AS Total_Revenue,
SUM(COGS) AS Total_COGS,
SUM(Profit) AS Total_Profit
FROM dbo.orders;**

## Dynamic KPI Selector
A disconnected **Metric Selector table** allows users to switch KPIs dynamically.
<img width="1920" height="539" alt="image" src="https://github.com/user-attachments/assets/8b3ee7cf-88c5-4466-8bd0-f4ce8af2d5e0" />

## Data Visualization
<img width="1920" height="975" alt="image" src="https://github.com/user-attachments/assets/7095430f-58be-4d41-b8e1-a45041324789" />
<img width="1920" height="977" alt="image" src="https://github.com/user-attachments/assets/04b353d3-69db-4a47-9fea-2f2afbee30ea" />

### Publish Report to Power BI Service
Lineage View after the REPORT is published to Power BI Service under Workspace
<img width="1505" height="234" alt="image" src="https://github.com/user-attachments/assets/b9fe8dc3-0b42-4b12-a696-9e32e2278387" />

## Key Insights
- Based on the Gross Margin Percentage analysis ,Identified **low-margin products (<30%)**
- **Discontinue or Price-Hike:** Review and either discontinue or significantly raise the price(by 25% or more) on the following low-margin accessories and merchandise:
    **—Chemex Filters( 100 Pack)(Lowest Total MARGIN AT 12.00%)**
    **—Minimalist Keychain(11.98%)**
    **—Logo Hoodie (Black)(12.%)**
- **Required Price Adjustment**:**Increase the price of the Gooseneck Electric Kettle** to restore its Gross Margin Percentage above 30% threshold.
- These actions are necessary because the rising COGS has made these products unprofitable or structurally weak contributors to overall profit.
- 
## Business Impact
- Reduced reporting development time
- Improved pricing decision-making
- Performance-optimized BI model
