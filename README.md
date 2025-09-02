🛠️ Manufacturing Defect Analysis with SQL
This project explores a manufacturing defects dataset using pure SQL in SQL Server Management Studio (SSMS). The goal is to uncover trends, cost insights, severity patterns, and product-level performance based on 20 strategic business questions.
________________________________________
📌 Project Objectives
•	Identify which severity levels are most frequent and most costly
•	Understand how defect types and locations affect product quality
•	Track time-based trends (monthly/seasonal defect patterns)
•	Compare product performance and identify quality control gaps
•	Build a foundation for future Power BI dashboards
________________________________________
🗃️ Dataset Overview
This dataset contains 100 unique product IDs and the following fields:
•	defect_id
•	product_id
•	defect_type — (Cosmetic, Functional, Structural)
•	defect_date
•	defect_location — (Surface, Internal, Component)
•	severity — (Minor, Moderate, Critical)
•	inspection_method — (Manual, Automated, Visual)
•	repair_cost
📎 Source: Manufacturing Defects Dataset on Kaggle
(By Fahmida Chowdhury — accessed for educational and analytical purposes)
________________________________________
🔍 Questions Answered (20 Total)
Grouped into categories:
🔴 Severity-Level Analysis
1.	Which severity level occurs most frequently?
2.	Which severity level has the highest average repair cost?
3.	Are minor defects more common but cheaper than critical ones?
4.	Do moderate defects behave more like minor or critical?
5.	What is the total repair cost by severity level?
6.	Are most costs from a few critical defects or many minor ones?
7.	Which severity level contributes the most to total repair cost?
🛠️ Defect Type & Inspection
8.	Which defect types are more likely to be critical?
9.	Are cosmetic defects more often minor or moderate?
10.	Which defect types appear across all severity levels?
📅 Time-Based Trends
11.	Are there specific months where critical defects peak?
12.	Do minor/moderate defects show seasonal patterns?
13.	Is the severity level improving over time?
🔎 Detection & Location
14.	Which product areas are more prone to critical defects?
15.	Do inspection methods vary by severity?
16.	Which inspection method detects the most critical defects?
📦 Product-Specific Patterns
17.	Which products are affected by all severity levels?
18.	Which products are not affected by all severity levels?
19.	Do some products have mostly minor (easy-to-fix) issues?
20.	Are products with frequent critical defects more costly to fix?
________________________________________
📂 Repository Contents
File	Description
ManufacturingDefectQuery.sql	Full SQL script answering all 20 questions
README.md	Project overview and documentation
visuals/ (coming soon)	Power BI dashboards and charts (in development)
________________________________________
🧠 Skills Demonstrated
•	Grouping data by severity, time, and product
•	Using COUNT, SUM, AVG, HAVING, GROUP BY, and subqueries
•	Structuring SQL to solve real-world business problems
•	Preparing analysis ready for dashboard integration (Power BI)
________________________________________
🚀 What’s Next?
•	Add Power BI visuals and charts
•	Create dynamic dashboards using SQL outputs
•	Share this portfolio project on LinkedIn and job applications
________________________________________
👩‍💻 About Me
I’m actively learning SQL and Data Analysis while working in the professional environment in New Zealand. This project showcases my growing ability to answer business questions using data.
More projects — including Power BI dashboards and Excel-based analysis — coming soon!

