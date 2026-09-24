-- ============================================
-- SWIGGY RESTAURANT DATA ANALYSIS
-- Database: swiggy_analysis
-- ============================================

USE swiggy_analysis;

-- 1. Check total records
SELECT COUNT(*) AS total_records
FROM swiggy;

-- 2. Check NULL values 
SELECT
    COUNT(*) AS total_rows,
    SUM(name IS NULL) AS null_names,
    SUM(city IS NULL) AS null_cities,
    SUM(rating IS NULL) AS null_ratings,
    SUM(rating_count IS NULL) AS null_rating_counts,
    SUM(cost IS NULL) AS null_costs,
    SUM(cuisine IS NULL) AS null_cuisines
FROM swiggy;

-- 3. Create cleaned analysis table
DROP TABLE IF EXISTS swiggy_cleaned;

CREATE TABLE swiggy_cleaned AS
SELECT
    id,
    name,
    city,
    cuisine,
    CAST(NULLIF(TRIM(rating), '--') AS DECIMAL(3,1)) AS rating,
    rating_count,
    CAST(
        NULLIF(
            REGEXP_REPLACE(cost, '[^0-9]', ''),
            ''
        ) AS UNSIGNED
    ) AS cost,
    lic_no,
    link,
    address
FROM swiggy;

-- 4. Overall dataset summary
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT city) AS total_cities,
    COUNT(DISTINCT cuisine) AS total_cuisines,
    ROUND(AVG(rating), 2) AS average_rating,
    ROUND(AVG(cost), 2) AS average_cost
FROM swiggy_cleaned;

-- 5. Top 10 locations by restaurant count
SELECT
    city,
    COUNT(*) AS restaurant_count
FROM swiggy_cleaned
GROUP BY city
ORDER BY restaurant_count DESC
LIMIT 10;

-- 6. Top 10 cuisine combinations
SELECT
    cuisine,
    COUNT(*) AS restaurant_count
FROM swiggy_cleaned
GROUP BY cuisine
ORDER BY restaurant_count DESC
LIMIT 10;

-- 7. Locations with highest average rating
SELECT
    city,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(rating), 2) AS average_rating
FROM swiggy_cleaned
WHERE rating IS NOT NULL
GROUP BY city
HAVING COUNT(*) >= 10
ORDER BY average_rating DESC
LIMIT 10;

-- 8. Highest-cost restaurants
SELECT
    name,
    city,
    cuisine,
    rating,
    cost
FROM swiggy_cleaned
WHERE cost IS NOT NULL
ORDER BY cost DESC
LIMIT 10;

-- 9. Locations with highest average cost
SELECT
    city,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(cost), 0) AS average_cost
FROM swiggy_cleaned
WHERE cost IS NOT NULL
GROUP BY city
HAVING COUNT(*) >= 10
ORDER BY average_cost DESC
LIMIT 10;

-- 10. Highly rated restaurants
SELECT
    name,
    city,
    cuisine,
    rating,
    rating_count,
    cost
FROM swiggy_cleaned
WHERE rating >= 4.5
  AND rating_count REGEXP '^[0-9]+'
ORDER BY rating DESC
LIMIT 20;

-- 11. Most common restaurant names
SELECT
    name,
    COUNT(*) AS branch_count
FROM swiggy_cleaned
WHERE name IS NOT NULL
  AND TRIM(name) <> ''
GROUP BY name
ORDER BY branch_count DESC
LIMIT 10;

-- 12. Location rating and cost analysis
SELECT
    city,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(rating), 2) AS average_rating,
    ROUND(AVG(cost), 0) AS average_cost
FROM swiggy_cleaned
WHERE rating IS NOT NULL
  AND cost IS NOT NULL
GROUP BY city
HAVING COUNT(*) >= 30
ORDER BY average_rating DESC, average_cost ASC
LIMIT 10;

-- 13. Popular cuisine combinations with rating
SELECT
    cuisine,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(rating), 2) AS average_rating
FROM swiggy_cleaned
WHERE rating IS NOT NULL
GROUP BY cuisine
HAVING COUNT(*) >= 50
ORDER BY restaurant_count DESC
LIMIT 10;

-- 14. Rating distribution
SELECT
    CASE
        WHEN rating >= 4.5 THEN '4.5 - 5.0'
        WHEN rating >= 4.0 THEN '4.0 - 4.4'
        WHEN rating >= 3.5 THEN '3.5 - 3.9'
        WHEN rating >= 3.0 THEN '3.0 - 3.4'
        WHEN rating >= 2.5 THEN '2.5 - 2.9'
        WHEN rating >= 2.0 THEN '2.0 - 2.4'
        ELSE 'Below 2.0'
    END AS rating_range,
    COUNT(*) AS restaurant_count
FROM swiggy_cleaned
WHERE rating IS NOT NULL
GROUP BY rating_range
ORDER BY rating_range DESC;

-- 15. Cost vs rating analysis
SELECT
    CASE
        WHEN cost < 200 THEN 'Below ₹200'
        WHEN cost < 300 THEN '₹200 - ₹299'
        WHEN cost < 400 THEN '₹300 - ₹399'
        WHEN cost < 500 THEN '₹400 - ₹499'
        ELSE '₹500+'
    END AS cost_range,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(rating), 2) AS average_rating
FROM swiggy_cleaned
WHERE cost IS NOT NULL
  AND rating IS NOT NULL
GROUP BY cost_range
ORDER BY MIN(cost);

-- 16. Final location summary
SELECT
    city,
    COUNT(*) AS restaurant_count,
    ROUND(AVG(rating), 2) AS average_rating,
    ROUND(AVG(cost), 0) AS average_cost
FROM swiggy_cleaned
GROUP BY city
HAVING COUNT(*) >= 30
ORDER BY restaurant_count DESC
LIMIT 15;
