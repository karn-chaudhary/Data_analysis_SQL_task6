SELECT 
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS month
FROM 
    online_esale.sales;
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS month
FROM 
    online_esale.sales
GROUP BY 
    year, month;
    
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS month,
    SUM(`Total Amount`) AS revenue
FROM 
    online_esale.sales    
GROUP BY 
    year, month;
  
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS month,
    COUNT(DISTINCT `Order Id`) AS volume
FROM 
    online_esale.sales
GROUP BY 
    year, month;
    
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS month,
    SUM(`Total Amount`) AS revenue,
    COUNT(DISTINCT `Order Id`) AS volume
FROM 
    online_esale.sales
GROUP BY 
    year, month
ORDER BY 
    year, month;
    
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%m/%d/%Y')) AS month,
    SUM(`Total Amount`) AS revenue,
    COUNT(DISTINCT `Order Id`) AS volume
FROM 
    online_esale.sales
WHERE 
    STR_TO_DATE(Date, '%m/%d/%Y') BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY 
    year, month
ORDER BY 
    year, month;
    
        
  
    
    
    