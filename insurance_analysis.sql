/*
===========================================================
Healthcare Insurance Data Analysis Using PostgreSQL

Author:Suzana Hussain
Tools: PostgreSQL (pgAdmin)

Dataset:
Medical Cost Personal Dataset (1,338 Records)

Objective:
Analyze healthcare insurance data to identify
cost drivers, regional differences, and high-risk
customer segments using SQL.

*/

-- =========================================================
-- Database Setup
-- Create the insurance table.
-- =========================================================
CREATE TABLE IF NOT EXISTS insurance (
    age INTEGER,
    sex VARCHAR(10),
    bmi NUMERIC(5,2),
    children INTEGER,
    smoker VARCHAR(5),
    region VARCHAR(20),
    charges NUMERIC(10,2)
);

-- Validate the number of records imported.
SELECT COUNT(*) AS total_records
FROM insurance;

-- 1. Compare Average Medical Charges by Smoking Status and BMI Category

SELECT
    CASE
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi < 25 THEN 'Normal'
        WHEN bmi < 30 THEN 'Overweight'
        ELSE 'Obese'
    END AS bmi_group,
    smoker,
    ROUND(AVG(charges)::numeric,2) AS avg_charges
FROM insurance
GROUP BY bmi_group, smoker
ORDER BY bmi_group, smoker;


-- 2. Identify Regions with the Highest Total Medical Costs.
SELECT    
	region,
    SUM(charges) AS total_medical_cost
FROM insurance
GROUP BY region
ORDER BY total_medical_cost DESC;

-- 3. Compare Average Medical Costs Across Regions.
SELECT     
	region,
    ROUND(AVG(charges)::numeric, 2) AS average_medical_cost
FROM insurance
GROUP BY region
ORDER BY average_medical_cost DESC;

-- 4. Calculate the Percentage of Total Medical Costs Attributable to Smokers.
SELECT
    ROUND(
        SUM(CASE WHEN smoker = 'yes' THEN charges ELSE 0 END)
        * 100.0
        / SUM(charges),
        2
    ) AS percentage_of_total_charges_from_smokers
FROM insurance;

-- 5. Identify the Top 10 Highest-Cost Records
SELECT
    age,
    sex,
    bmi,
    children,
    smoker,
    region,
    charges
FROM insurance
ORDER BY charges DESC
LIMIT 10;


--6. Compare Smoking Prevalence Across Regions.

SELECT
    region,
    COUNT(CASE WHEN smoker = 'yes' THEN 1 END) AS smokers,
    COUNT(*) AS total_people,
    ROUND(
        COUNT(CASE WHEN smoker = 'yes' THEN 1 END) * 100.0
        / COUNT(*),
        2
    ) AS smoker_percentage
FROM insurance
GROUP BY region
ORDER BY smoker_percentage DESC;


--7. Identify Records with Charges Above Their Regional Average.

SELECT
    age,
    sex,
    bmi,
    region,
    charges
FROM insurance i
WHERE charges >
(
    SELECT AVG(charges)
    FROM insurance
    WHERE region = i.region
)
ORDER BY region, charges DESC;

--8. Rank the Top 5 Highest-Cost Records Within Each Region
WITH RankedPatients AS
(
    SELECT
        region,
        age,
        sex,
        smoker,
        charges,
        RANK() OVER
        (
            PARTITION BY region
            ORDER BY charges DESC
        ) AS charge_rank

    FROM insurance
)

SELECT
    region,
    age,
    sex,
    smoker,
    charges,
    charge_rank
FROM RankedPatients
WHERE charge_rank <= 5
ORDER BY region, charge_rank;


-- 9. Analyze Average Charges by Age Group and Smoking Status
SELECT

CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    WHEN age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+'
END AS age_group,

smoker,

ROUND(AVG(charges)::numeric,2) AS average_charge

FROM insurance

GROUP BY
    age_group,
    smoker

ORDER BY average_charge DESC;


-- 10. Identify High-Cost Customer Segments by Age, BMI, and Smoking Status
SELECT

CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    WHEN age BETWEEN 46 AND 55 THEN '46-55'
    ELSE '56+'
END AS age_group,

CASE
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi < 25 THEN 'Normal'
    WHEN bmi < 30 THEN 'Overweight'
    ELSE 'Obese'
END AS bmi_category,

smoker,

COUNT(*) AS number_of_records,

ROUND(AVG(charges)::numeric,2) AS average_charge

FROM insurance

GROUP BY
    age_group,
    bmi_category,
    smoker
HAVING COUNT(*) >= 10
ORDER BY average_charge DESC;