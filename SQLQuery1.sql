USE [grind_sales]
GO

/****** Object:  View [dbo].[orders]    Script Date: 12/19/2025 12:36:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




---merging three years of order table(2023,2024,2025) and creating a view table as main dataset query---

CREATE OR ALTER   VIEW [dbo].[orders]
AS
WITH all_orders AS
(
    SELECT 
        OrderID,
        CustomerID,
        ProductID,
        OrderDate,
        Quantity,
        Revenue,
        COGS
    FROM dbo.Orders_2023

    UNION ALL

    SELECT 
        OrderID,
        CustomerID,
        ProductID,
        OrderDate,
        Quantity,
        Revenue,
        COGS
    FROM dbo.Orders_2024

    UNION ALL

    SELECT 
        OrderID,
        CustomerID,
        ProductID,
        OrderDate,
        Quantity,
        Revenue,
        COGS
    FROM dbo.Orders_2025
),
orders_calculated AS
(
    SELECT
        a.OrderID,
        a.CustomerID,
        a.ProductID,
        a.OrderDate,
        ROUND(p.Price, 2) AS Price,
        a.Quantity,
        ROUND(a.Revenue,2) AS Revenue,
        ROUND(
                CASE 
                    WHEN a.Revenue IS NULL 
                    THEN p.Price * a.Quantity 
                    ELSE a.Revenue 
                END, 
            2) 
         AS Calculated_Revenue,
        ROUND(a.COGS, 2) AS COGS
    FROM all_orders a
    JOIN dbo.Products p
        ON a.ProductID = p.ProductID
)
SELECT
    OrderID,
    CustomerID,
    ProductID,
    OrderDate,
    Price,
    Quantity,
    Revenue,
    Calculated_Revenue,
    COGS,
    ROUND(Calculated_Revenue - COGS, 2)  AS Profit
FROM orders_calculated;



GO


