# End-to-End-Analytics-Project
### Product Revenue & Pricing Analysis

### (SQL Server +Power BI Desktop + Power BI Service)

![ETL FLOW.png](attachment:206419ad-5eb5-45ed-bc5b-e0dec148d97e:ETL_FLOW.png)
[view](<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/3522808a-85ed-437e-ac0e-8d7521f17f97" />)
<img width="800" height="533" alt="image" src="https://github.com/user-attachments/assets/ea399260-5169-48c6-9c18-ca09cb64c18f" />


## Project Overview

This project focuses on analyzing **product revenue, profit, and gross margin trends** to help management identify **low-margin products** and make informed **pricing or discontinuation decisions**.

The solution combines **SQL Server for data processing** and **Power BI for analytics and visualization**, following real-world enterprise BI best practices.

---

## Business Problem

Management observed a **decline in gross margins** due to rising costs (COGS, tariffs, operations).

![Screenshot 2025-12-18 015056.png](attachment:25fdb424-e6c0-4c18-846d-d791dcdb9ced:Screenshot_2025-12-18_015056.png)

### Key Questions:

- Which products have **Gross Margin < 30%**?
- Should these products be **repriced or discontinued**?
- How do revenue and margin trends change **year over year**?

---

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

![Screenshot 2025-12-17 041543.png](attachment:93e0ba5c-154f-4ff3-b66f-daea88893dae:Screenshot_2025-12-17_041543.png)

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

![Screenshot 2025-12-18 014503.png](attachment:8328629e-bea8-41a1-9965-f84512a33aca:Screenshot_2025-12-18_014503.png)

---

## Data Visualization

![Screenshot 2025-12-18 014420.png](attachment:2c61b566-5e1d-4644-9935-0bfe3ecd1294:Screenshot_2025-12-18_014420.png)

![Screenshot 2025-12-18 013658.png](attachment:c59d9d07-f18e-417a-9323-fd7abc1ee841:Screenshot_2025-12-18_013658.png)

### Publish Report to Power BI Service

Lineage View after the REPORT is published to Power BI Service under Workspace

![Screenshot 2025-12-18 030949.png](attachment:81af22fa-3d91-45a2-824b-ee1fb48902cd:Screenshot_2025-12-18_030949.png)

---

## Key Insights

- Based on the Gross Margin Percentage analysis ,Identified **low-margin products (<30%)**
- **Discontinue or Price-Hike:** Review and either discontinue or significantly raise the price(by 25% or more) on the following low-margin accessories and merchandise:
    
    **—Chemex Filters( 100 Pack)(Lowest Total MARGIN AT 12.00%)**
    
    **—Minimalist Keychain(11.98%)**
    
    **—Logo Hoodie (Black)(12.%)**
    
- **Required Price Adjustment**:**Increase the price of the Gooseneck Electric Kettle** to restore its Gross Margin Percentage above 30% threshold.
- These actions are necessary because the rising COGS has made these products unprofitable or structurally weak contributors to overall profit.

---

## Business Impact

- Reduced reporting development time
- Improved pricing decision-making
- Performance-optimized BI model
