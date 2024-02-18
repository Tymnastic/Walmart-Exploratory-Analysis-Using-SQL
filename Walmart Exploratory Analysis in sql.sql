-- Creates a new database named "Walmart" and switches to it
CREATE DATABASE Walmart;
USE Walmart;

-- Renames the table "walmartSales" to "Invoice"
EXEC sp_rename "walmartSales","Invoice";

-- Displays all rows from the "Invoice" table
SELECT * FROM Invoice;

-- Calculates total sales revenue for each branch and formats the result
SELECT Branch, FORMAT(SUM(Total),'C') AS "Total branch sales" FROM Invoice
    GROUP BY Branch
    ORDER BY 2 DESC;

-- Identifies the popular product lines generating the highest revenue
SELECT Product_line, FORMAT(SUM(Total),'C') AS "Total Product Line Sales" 
    FROM Invoice
    GROUP BY Product_line
    ORDER BY 2 DESC;

-- Analyzes the distribution of customer types (Member vs. Normal) across branches
SELECT Branch, Customer_type, COUNT(Customer_type) AS "Distribution Across Branch" FROM Invoice
    GROUP BY Branch, Customer_type
    ORDER BY 1;

-- Determines the most commonly used payment method
SELECT Payment, COUNT(Payment) AS "Number of transactions" FROM Invoice
    GROUP BY Payment
    ORDER BY 2 DESC;

-- Analyzes sales performance variation over different months
SELECT FORMAT(Date,'MMMM') AS "Months" , FORMAT(SUM(Total),'C') AS  "Monthly Sales"
    FROM Invoice
    GROUP BY FORMAT(Date,'MMMM')
    ORDER BY SUM(Total) DESC;

-- Analyzes sales performance variation over different days
SELECT FORMAT(Date,'dddd') AS "Days" , FORMAT(SUM(Total),'C') AS  "Daily Sales"
    FROM Invoice
    GROUP BY FORMAT(Date,'dddd')
    ORDER BY SUM(Total) DESC;

-- Determines the tax contribution by each branch
WITH TX AS  
    (SELECT SUM(Tax_5) AS "TOTAL_TAX" FROM Invoice)
    
SELECT Branch,
(
    FORMAT(
    (
    (
    SUM(Tax_5)/(SELECT TOTAL_TAX FROM TX)
    ) * 100),'0.00'
        )
        +'%' ) AS "Contribution to tax"
FROM Invoice
GROUP BY Branch
ORDER BY 2 DESC;

-- Identifies the top selling products in each branch
WITH ProductSales AS (
    SELECT 
        Branch,
        Product_line,
        FORMAT(SUM(Total),'C') AS "TotalSales" ,
        RANK() OVER(PARTITION BY Branch ORDER BY SUM(Total) DESC) AS "SalesRank"
    FROM 
        Invoice
    GROUP BY 
        Branch, Product_line
)

SELECT
    Branch,
    Product_line,
    TotalSales,
    SalesRank
FROM 
    ProductSales
WHERE 
    SalesRank = 1;

-- Analyzes the gender distribution of customers across branches
SELECT 
    Branch,
    Gender,
    COUNT(Gender) AS "Total" ,
    FORMAT((CAST(COUNT(Gender) AS FLOAT) / SUM(COUNT(Gender)) OVER(PARTITION BY Branch) * 100),'0.##') +'%' AS "GenderDistribution"
FROM 
    Invoice
GROUP BY 
    Branch, Gender
ORDER BY
    Branch;

-- Determines the peak and dip times of sales throughout the day
WITH SALESTIME AS(
    SELECT
    Invoice_id,
    Total,
    CONVERT(VARCHAR, Time, 108) AS TIMEEE,
    CASE
        WHEN CAST(Time AS TIME) BETWEEN '00:00:00' AND '12:00:00' THEN 'MORNING'
        WHEN CAST(Time AS TIME) BETWEEN '12:00:00' AND '17:00:00' THEN 'AFTERNOON'
        WHEN  CAST(Time AS TIME) BETWEEN '17:00:00' AND '23:00:00' THEN 'EVENING'
    END AS PERIOD
    FROM Invoice)

SELECT 
    PERIOD,
    FORMAT(SUM(Total),'C') AS TotalSales,
    COUNT(PERIOD) AS "NUMBER OF ORDERS"
FROM 
    SALESTIME
    GROUP BY 
        PERIOD
    ORDER BY
        3 DESC;

-- Analyzes product lines with the highest gross income
SELECT 
    Product_line,
    FORMAT(SUM(gross_income), 'C') AS "GrossIncome"
FROM
    Invoice
GROUP BY
    Product_line;

-- Compares the frequency of purchases for members vs. regular customers
SELECT 
    Customer_Type,
    SUM(Quantity) AS "Number of Purchase",
    DATEDIFF(Day,MIN(Date),MAX(Date)) AS "DATEDIFF",
    SUM(Quantity)/(SELECT DATEDIFF(Day,MIN(Date),MAX(Date)) FROM Invoice)  AS "Order Per Day"
FROM 
    Invoice
GROUP BY
    Customer_type;
