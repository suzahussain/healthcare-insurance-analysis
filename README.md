# healthcare-insurance-analysis
Healthcare insurance cost analysis using Microsoft Excel.

## Project Overview

This project analyzes a healthcare insurance dataset using Microsoft Excel to explore factors associated with medical insurance charges. The analysis uses PivotTables, PivotCharts, XLOOKUP, and a dashboard to summarize patterns in medical costs across different customer characteristics.

The goal is to demonstrate practical Excel skills used in data analysis, including data preparation, data summarization, dashboard creation, and communicating findings from exploratory data analysis.

---

## Tools & Skills

* Microsoft Excel
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

## Analysis Questions

This analysis explores the following questions:

1. Do smokers have higher medical charges than non-smokers?
2. How do medical charges vary across age groups?
3. Does BMI group relate to differences in medical charges?
4. Do medical charges vary by region?
5. Is there a relationship between number of children and medical charges?

---

## Key Findings

* Smokers had substantially higher average medical charges compared with non-smokers, with average charges approximately **3.8 times higher**.
* Average medical charges increased across age groups, with individuals aged **56+** having the highest average charges.
* The **Obese** BMI group had the highest average medical charges among BMI categories.
* Regional differences existed, but the variation was smaller compared with differences observed by smoking status, age, and BMI.
* The number of children did not show a consistent pattern with average medical charges.

---

## Project Structure


insurance-cost-analysis/
│
├── insurance_analysis.xlsx
└── README.md


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

* Recreating the analysis using SQL
* Expanding the analysis with SQL queries and additional data exploration
* Building an interactive dashboard using Power BI or Tableau
* Performing statistical analysis to further examine relationships between variables

---

## About This Project

This project was created as part of my data analytics portfolio to demonstrate practical Excel skills used in exploratory data analysis. It showcases the ability to prepare data, create calculated fields, analyze patterns using PivotTables, build a dashboard with Excel formulas and visualizations, and communicate findings clearly.
