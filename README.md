# healthcare-insurance-analysis
Healthcare insurance cost analysis using Microsoft Excel and PostgreSQL.


## Project Overview

This project analyzes a healthcare insurance dataset using Microsoft Excel to explore factors associated with medical insurance charges. The analysis uses PivotTables, PivotCharts, XLOOKUP, and a dashboard to summarize patterns in medical costs across different customer characteristics.

The goal is to demonstrate practical Excel skills used in data analysis, including data preparation, data summarization, dashboard creation, and communicating findings from exploratory data analysis.

---

## Tools & Skills

* Microsoft Excel
* PostgreSQL
* SQL Queries
* Data Preparation
* Calculated Fields
* PivotTables
* PivotCharts
* XLOOKUP
* Dashboard Creation
* Exploratory Data Analysis
* Data Visualization

---

## Dataset

The project uses a healthcare insurance dataset containing information on individual insurance beneficiaries.

### Original Variables

* Age
* Sex
* BMI (Body Mass Index)
* Number of Children
* Smoking Status
* Region
* Medical Charges

### Calculated Fields

To support the analysis, two additional fields were created in Excel:

* **Age Group** (18–25, 26–35, 36–45, 46–55, 56+)
* **BMI Group** (Underweight, Normal, Overweight, Obese)

These calculated fields were used to categorize customers and compare average medical charges across different groups.

---

## Dataset Source

The dataset used in this project was obtained from the "Medical Cost Personal Dataset" on Kaggle.

Source: https://www.kaggle.com/datasets/mirichoi0218/insurance

---

## Analysis Questions(Excel)

This analysis explores the following questions:

1. Do smokers have higher medical charges than non-smokers?
2. How do medical charges vary across age groups?
3. Does BMI group relate to differences in medical charges?
4. Do medical charges vary by region?
5. Is there a relationship between number of children and medical charges?

## Key Findings

* Smokers had substantially higher average medical charges compared with non-smokers, with average charges approximately **3.8 times higher**.
* Average medical charges increased across age groups, with individuals aged **56+** having the highest average charges.
* The **Obese** BMI group had the highest average medical charges among BMI categories.
* Regional differences existed, but the variation was smaller compared with differences observed by smoking status, age, and BMI.
* The number of children did not show a consistent pattern with average medical charges.


## SQL Analysis (PostgreSQL)

The dataset was also analyzed using PostgreSQL to explore medical cost patterns and compare charges across customer segments.

The SQL analysis includes 10 queries examining:

* Average medical charges by smoking status and BMI category
* Total and average medical costs across regions
* Percentage of total medical charges attributable to smokers
* Records with the highest medical charges
* Smoking prevalence across regions
* Records with charges above their regional average
* Highest-cost records within each region using ranking functions
* Average charges by age group and smoking status
* High-cost customer segments based on age, BMI, and smoking status

## SQL Concepts Used
* Aggregate functions: AVG(), SUM(), COUNT()
* Conditional logic: CASE WHEN
* Grouping and sorting: GROUP BY, ORDER BY
* Subqueries
* Window functions: RANK()
* Filtering grouped results: HAVING

## SQL Script: ([insurance_analysis.sql](https://github.com/suzahussain/healthcare-insurance-analysis/blob/main/insurance_analysis.sql))

---

## Project Structure

* [Dashboard.png](https://github.com/suzahussain/healthcare-insurance-analysis/blob/main/Dashboard.png) — Screenshot of the Excel dashboard
* [HealthCare_Insurance_Analysis.xlsx](https://github.com/suzahussain/healthcare-insurance-analysis/blob/main/HealthCare_Insurance_Analysis.xlsx) — Excel analysis and dashboard workbook
* [README.md ](https://github.com/suzahussain/healthcare-insurance-analysis/blob/main/README.md)— Project documentation
* [insurance_analysis.sql](https://github.com/suzahussain/healthcare-insurance-analysis/blob/main/insurance_analysis.sql) — PostgreSQL analysis queries

### Workbook Contents

**Raw Data**

* Original healthcare insurance dataset
* Added calculated **Age Group** and **BMI Group** fields

**Pivot Tables**

* Average medical charges by smoking status
* Average medical charges by age group
* Average medical charges by BMI group
* Average medical charges by region
* Average medical charges by number of children

**Dashboard**

* KPI summary
* PivotCharts
* XLOOKUP formulas
* Key metrics comparing medical charges across categories

**Insights**

* Analysis questions
* Findings
* Conclusions
* Overall summary of observed patterns

---

## Future Improvements

Future updates to this project will include:

* Expand the SQL analysis with additional questions and deeper data exploration
* Build an interactive dashboard using Power BI or Tableau
* Perform statistical analysis to further examine relationships between variables

---

## About This Project

This project was created as part of my data analytics portfolio to demonstrate practical skills in data preparation, exploratory data analysis, SQL querying, and data visualization. It combines Excel-based analysis and dashboard creation with PostgreSQL queries to investigate patterns in healthcare insurance charges and communicate key findings.

