/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [defect_id]
      ,[product_id]
      ,[defect_type]
      ,[defect_date]
      ,[defect_location]
      ,[severity]
      ,[inspection_method]
      ,[repair_cost]
  FROM [ManufacturingDefectsDB].[dbo].[defects_data$]

/***Total products***/
SELECT COUNT (DISTINCT product_id) AS Total_Products
FROM [ManufacturingDefectsDB].[dbo].[defects_data$];

/***Severity-Level Comparison**/
/**1.	Which severity level occurs most frequently?**/
SELECT severity, COUNT(*) AS severity_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY severity
ORDER BY severity_count DESC;

/**2. Which severity level has the highest average repair cost?**/
SELECT severity, ROUND(AVG(repair_cost),2) AS highestAVG_repairCost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY severity
ORDER BY AVG(repair_cost) DESC;

/**3. Are minor defects more common but cheaper to fix compared to critical ones?**/
SELECT 
    severity,
    COUNT(*) AS defect_count,
    ROUND(AVG(repair_cost), 2) AS avg_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity IN ('Minor', 'Critical')
GROUP BY severity
ORDER BY severity;

/**4. Do moderate defects behave more like minor or critical ones in terms of frequency and cost?**/
SELECT 
    severity,
    COUNT(*) AS defect_count,
    ROUND(AVG(repair_cost), 2) AS avg_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity IN ('Moderate', 'Minor', 'Critical')
GROUP BY severity
ORDER BY severity;

/***Repair Cost Insights***/
/**5. What is the total repair cost by severity level?**/
SELECT severity, ROUND(SUM(repair_cost),2) AS total_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY severity
ORDER BY SUM(repair_cost) DESC;

/**6. Are most of the repair costs driven by a few critical defects, or many minor ones?**/
SELECT 
    severity,
    COUNT(*) AS defect_count,
    ROUND(SUM(repair_cost),2) AS total_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity IN ('Minor', 'Critical')
GROUP BY severity
ORDER BY severity;

/**7.Which severity level contributes the most to the overall cost burden?**/
SELECT severity, ROUND(SUM(repair_cost),2) AS total_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY severity
ORDER BY SUM(repair_cost) DESC;

/**For Direct Answer for question 7.**/
SELECT TOP 1 severity, ROUND(SUM(repair_cost),2) AS total_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY severity
ORDER BY SUM(repair_cost) DESC;



/****Defect Type Analysis***/
/**8. Which types of defects (cosmetic, functional, structural) are more likely to be critical?**/
SELECT defect_type, COUNT(*) AS CriticalDefect_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity = 'Critical'
GROUP BY defect_type
ORDER BY CriticalDefect_count DESC;

/**9.Are cosmetic defects more often rated as minor or moderate?**/
SELECT severity, COUNT(*) AS defect_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE defect_type = 'Cosmetic'
AND severity IN ('Minor', 'Moderate')
GROUP BY severity
ORDER BY defect_count DESC;

/**10.	Which defect types appear across all severity levels, and how do their impacts differ?**/
SELECT 
    defect_type, 
    severity,
    COUNT(*) AS defect_count,
    ROUND(SUM(repair_cost), 2) AS total_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY defect_type, severity
ORDER BY defect_type, severity;

/*****Time-Based Trends****/
/**11.	Are there specific months where critical defects peak?**/
SELECT 
    FORMAT(defect_date, 'yyyy-MM') AS defect_month,
    COUNT(*) AS CriticalDefect_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity = 'Critical'
GROUP BY FORMAT(defect_date, 'yyyy-MM')
ORDER BY CriticalDefect_count DESC;

/**12.	Do minor or moderate defects show seasonality patterns?**/
SELECT 
    FORMAT(defect_date, 'yyyy-MM') AS defect_month,
    COUNT(*) AS MinorandModerate_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity IN ('Minor', 'Moderate')
GROUP BY FORMAT(defect_date, 'yyyy-MM')
ORDER BY MinorandModerate_count DESC;

/**13.	Is there a shift in the trend of severity levels over time (e.g., improving quality control)?**/
SELECT 
    severity,
	FORMAT(defect_date, 'yyyy-MM') AS defect_month,
	COUNT(*) AS severity_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY FORMAT(defect_date, 'yyyy-MM'), severity
ORDER BY defect_month ASC;


/*****Location & Detection Patterns****/
/**14.	Which product areas (surface, internal, component) are more prone to severe defects?**/
SELECT defect_location, COUNT(*) AS defectLocation_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity = 'Critical'
GROUP BY defect_location
ORDER BY defectLocation_count DESC;


/**15.	Do inspection methods vary by severity (e.g., manual more for critical)?**/
SELECT 
	inspection_method, 
	severity,
	COUNT(*) AS inspection_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
GROUP BY inspection_method, severity
ORDER BY inspection_count, severity;

/**16.	Which inspection method is most effective in detecting critical defects?**/
SELECT inspection_method, COUNT(*) AS inspection_count 
FROM [ManufacturingDefectsDB].[dbo].[defects_data$] 
WHERE severity = 'Critical' 
GROUP BY inspection_method 
ORDER BY inspection_count DESC;


/*****Product-Based Insights****/
/**17.	Which products are affected by all three severity levels?**/
SELECT 
    product_id,
    severity,
    COUNT(*) AS defect_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE product_id IN (
    SELECT product_id
    FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
    WHERE severity IN ('Critical', 'Moderate', 'Minor')
    GROUP BY product_id
    HAVING COUNT(DISTINCT severity) = 3
)
GROUP BY product_id, severity
ORDER BY product_id, severity;


/**18. Which products are not affected by all three severity levels?**/
SELECT 
    product_id,
    severity,
    COUNT(*) AS defect_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE product_id IN (
    SELECT product_id
    FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
    WHERE severity IN ('Critical', 'Moderate', 'Minor')
    GROUP BY product_id
    HAVING COUNT(DISTINCT severity) IN (1, 2)
)
GROUP BY product_id, severity
ORDER BY product_id, severity;


/**19.	Do certain products have mostly minor issues, indicating easy-to-fix quality control gaps?**/
SELECT
	product_id,
	severity, 
	COUNT(*) AS severity_count
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity = 'Minor'
GROUP BY product_id, severity
ORDER BY severity_count DESC;

/**20.	Are products with higher frequencies of critical defects also costlier to fix?**/
SELECT 
    product_id,
    COUNT(*) AS critical_defect_count,
    ROUND(SUM(repair_cost), 2) AS total_critical_repair_cost,
    ROUND(AVG(repair_cost), 2) AS avg_critical_repair_cost
FROM [ManufacturingDefectsDB].[dbo].[defects_data$]
WHERE severity = 'Critical'
GROUP BY product_id
ORDER BY critical_defect_count DESC;
