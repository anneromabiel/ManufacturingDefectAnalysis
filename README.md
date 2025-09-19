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
📊 Manufacturing Defects Analysis – Recommendations & Insights
1. Severity-Level Insights
•	Minor defects are the most frequent but also the cheapest to fix. This indicates many small quality lapses that accumulate but don’t pose major cost risks.
•	Critical defects are less frequent but far costlier, both in average repair cost and in total cost contribution.
•	Moderate defects sit in between but tend to behave closer to critical defects in terms of cost impact.
👉 Recommendation: Prioritize prevention of critical defects through stricter inspections and targeted quality checks, while addressing recurring minor issues with low-cost process improvements.
2. Repair Cost Drivers
•	Critical defects account for the largest share of repair costs, even though they’re fewer in number.
•	Minor defects contribute less per defect but can still accumulate due to volume.
👉 Recommendation: Allocate more budget and resources to prevent and fix critical defects early, while implementing automated solutions (e.g., machine vision) to quickly resolve minor ones before they pile up.

3. Defect Type Analysis
•	Functional and structural defects are more likely to be critical, suggesting design or assembly flaws.
•	Cosmetic defects are mainly minor or moderate, posing less financial risk but still affecting customer satisfaction.
👉 Recommendation: Strengthen functional/structural testing and introduce cosmetic defect tracking for brand reputation management.

4. Time-Based Trends
•	Critical defects peak in specific months, showing potential seasonal or operational stress points (e.g., production surges, supplier issues).
•	Minor and moderate defects show some seasonality too, suggesting process consistency issues.
👉 Recommendation: Cross-check peaks with production schedules, supplier deliveries, or workforce shifts. Plan preventive maintenance or extra QC during those periods.

5. Location & Detection Patterns
•	Surface and component areas show higher vulnerability to critical defects, pointing to assembly-line or materials issues.
•	Inspection methods vary in effectiveness: manual checks may catch more severe defects, but automated systems provide consistency.
👉 Recommendation: Invest in hybrid inspection (manual + automated) focused on surface and component areas.

6. Product-Level Insights
•	Some products are affected by all three severity levels, making them high-risk for customer dissatisfaction and warranty costs.
•	Others show mostly minor defects, which indicates easier-to-fix gaps but possible recurring QC issues.
•	Products with high critical defect frequency are also costlier, suggesting poor design or supplier-related issues.
👉 Recommendation: Segment products into:
o	High-risk (all severity levels, costly defects) → Deep redesign or stricter supplier standards.
o	Low-risk (mostly minor defects) → Quick process improvements.
o	Critical-heavy → Root-cause analysis and redesign testing.

✅ Final Recommendations
1.	Focus on Critical Defects: Highest cost burden; require preventive design & supplier controls.
2.	Improve Inspection Strategy: Combine manual expertise with automated detection for surface & component areas.
3.	Seasonal Quality Control: Strengthen checks during peak defect months to reduce spikes.
4.	Product Segmentation: Prioritize redesigns for products hit by all severity levels; streamline fixes for mostly minor ones.
5.	Cost Efficiency: Continue monitoring repair cost per severity to ensure budget alignment with risk levels.
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

