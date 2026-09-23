# Swiggy Restaurant Data Analysis — Findings

## Dataset Summary

- Total restaurant records: 81,777
- Database: MySQL
- Analysis table: `swiggy_cleaned`

## 1. Restaurant Distribution by City

The analysis identified the cities with the highest number of restaurants.

### SQL Analysis

```sql
SELECT
    city,
    COUNT(*) AS restaurant_count
FROM swiggy_cleaned
GROUP BY city
ORDER BY restaurant_count DESC
LIMIT 10;

Findings

Results will be documented here based on the SQL output.

2. Popular Cuisine Combinations

The analysis identified the most frequently occurring cuisine combinations.

Findings

Results will be documented here based on the SQL output.

3. City-wise Average Rating

Cities with at least 10 restaurants were compared based on their average restaurant rating.

Findings

Results will be documented here based on the SQL output.

4. Restaurant Pricing Analysis

Restaurant costs were converted from currency text into numeric values for analysis.

Findings

Results will be documented here based on the SQL output.

5. Rating Distribution

Restaurants were grouped into rating ranges to understand the overall rating distribution.

Findings

Results will be documented here based on the SQL output.

6. Cost vs Rating

Restaurant price ranges were compared with their average ratings.

Findings

Results will be documented here based on the SQL output.

7. Business Insights

The SQL analysis was used to identify patterns in:

Restaurant concentration across cities
Popular cuisine combinations
Restaurant ratings
Restaurant pricing
Relationship between cost and rating

Detailed observations will be added after reviewing the SQL results.


### 3. Save it.

Your folder should now look like:

```text
Swiggy-SQL-Analysis
│
├── README.md
├── swiggy_analysis.sql
└── findings.md