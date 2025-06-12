SELECT * FROM [Sample - Superstore.csv];

SELECT * FROM [Sample - Superstore.csv]
WHERE Profit IS NULL;

UPDATE [Sample - Superstore.csv]
SET Profit = 0
WHERE Profit IS NULL;

SELECT Category, SUM(Sales) AS Total_Sales
FROM [Sample - Superstore.csv]
GROUP BY Category;

SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity,
    ROUND(SUM(Profit) * 1.0 / NULLIF(SUM(Sales), 0), 2) AS Profit_Margin
FROM [Sample - Superstore.csv];

