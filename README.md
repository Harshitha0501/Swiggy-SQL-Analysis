# Swiggy Restaurant Data Analysis

## 📊 Project Overview

This project analyzes a Swiggy restaurant dataset using MySQL to identify patterns in restaurant distribution, cuisines, ratings, and pricing.

The project includes data cleaning, SQL transformations, aggregation, and business-oriented analysis.

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- SQL
- Git & GitHub

## 📁 Dataset

The dataset contains restaurant information including:

- Restaurant name
- City
- Rating
- Rating count
- Cost
- Cuisine
- Address
- Restaurant details

The imported dataset contains **81,777 restaurant records**.

## 🔧 Data Cleaning

The raw dataset was preserved and a separate `swiggy_cleaned` table was created.

Cleaning included:

- Converting restaurant ratings into numeric values
- Converting cost values from currency text into numeric values
- Handling missing/invalid rating values
- Preserving the original raw dataset

## 🔍 SQL Analysis

The project analyzes:

- Restaurant distribution by city
- Popular cuisine combinations
- Average restaurant ratings
- Highest-cost restaurants
- Average cost by city
- Highly rated restaurants
- Common restaurant names and branches
- City-level rating and cost patterns
- Rating distribution
- Cost versus rating patterns

## 📈 Key Insights

The analysis was performed using SQL queries in MySQL Workbench.

Detailed findings and screenshots will be added to this repository after analysis results are documented.

## 📂 Project Files

```text
Swiggy-SQL-Analysis/
│
├── README.md
├── swiggy_analysis.sql
└── findings.md

🚀 How to Run
Install MySQL and MySQL Workbench.
Create a database named swiggy_analysis.
Import the Swiggy CSV dataset.
Run swiggy_analysis.sql.
Review the analysis queries and results.
👩‍💻 Author

Harshitha C.


Then **Save** the file.

Don't upload to GitHub yet.

Reply **DONE** when saved.