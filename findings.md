# Swiggy Restaurant Data Analysis — Findings

## Dataset Summary

- Total restaurant records: 81,777
- Database: MySQL
- Analysis table: `swiggy_cleaned`

## 1. Restaurant Distribution by Location

The analysis identified the locations with the highest number of restaurant records.

| Rank | Location | Restaurant Count |
|---:|---|---:|
| 1 | Bikaner | 1,440 |
| 2 | Indirapuram, Delhi | 1,155 |
| 3 | BTM, Bangalore | 1,104 |
| 4 | Indiranagar, Bangalore | 1,038 |
| 5 | Rohini, Delhi | 1,037 |
| 6 | Electronic City, Bangalore | 1,003 |
| 7 | Greater Kailash 2, Delhi | 965 |
| 8 | Kukatpally, Hyderabad | 929 |
| 9 | Koramangala, Bangalore | 891 |
| 10 | HSR, Bangalore | 859 |

### Observation

Bikaner has the highest number of restaurant records in the dataset with 1,440 records. Several Bangalore and Delhi localities also appear among the locations with the highest restaurant counts.



## 2. Popular Cuisine Combinations

The analysis identified the most frequently occurring cuisine categories and combinations in the dataset.

| Rank | Cuisine | Restaurant Count |
|---:|---|---:|
| 1 | Indian | 3,595 |
| 2 | North Indian, Chinese | 3,577 |
| 3 | North Indian | 2,769 |
| 4 | Chinese | 2,335 |
| 5 | Indian, Chinese | 2,258 |
| 6 | South Indian | 2,006 |
| 7 | Bakery | 1,735 |
| 8 | Pizzas | 1,276 |
| 9 | Beverages | 1,273 |
| 10 | Bakery, Desserts | 1,213 |

### Observation

Indian cuisine is the most frequently occurring individual cuisine category with 3,595 restaurant records. North Indian and Chinese cuisine categories and combinations also have a large presence in the dataset.


## 3. Location-wise Average Rating

Locations with at least 10 restaurant records were compared based on their average restaurant rating.

| Rank | Location | Restaurant Count | Average Rating |
|---:|---|---:|---:|
| 1 | Frazer Town, Bangalore | 78 | 4.22 |
| 2 | Mylapore, Chennai | 90 | 4.22 |
| 3 | Adyar, Chennai | 210 | 4.22 |
| 4 | Majestic, Bangalore | 46 | 4.20 |
| 5 | Central Bangalore, Bangalore | 264 | 4.19 |
| 6 | Nungambakkam, Chennai | 154 | 4.19 |
| 7 | Panampilly Nagar, Kochi | 140 | 4.19 |
| 8 | Kilpauk, Chennai | 64 | 4.17 |
| 9 | Royapettah, Chennai | 119 | 4.17 |
| 10 | T Nagar, Chennai | 179 | 4.17 |

### Observation

The highest average rating in this analysis is 4.22, shared by Frazer Town, Mylapore, and Adyar. The results show that several Bangalore and Chennai locations have high average restaurant ratings.



## 4. Restaurant Pricing Analysis

The restaurant cost field was converted from currency-formatted text into a numeric value for analysis.

The 10 highest-cost records were:

| Rank | Restaurant | Location | Cost |
|---:|---|---|---:|
| 1 | KOHINOOR HOTEL | Hinganghat | ₹300,350 |
| 2 | Oasis restaurant | Electronic City, Bangalore | ₹8,000 |
| 3 | VENOM CLUB AND KITCHEN | Hathibarkala, Dehradun | ₹6,000 |
| 4 | Aggarwal sweet india | GTB Nagar, Delhi | ₹5,023 |
| 5 | Rock N Shawarma Take Away | Ajmer | ₹3,999 |
| 6 | Olive Beach | Central Bangalore, Bangalore | ₹3,500 |
| 7 | SRS HAVMOR | Manikonda, Hyderabad | ₹3,360 |
| 8 | Sofra food court | Vanasthalipuram, Hyderabad | ₹3,200 |
| 9 | THE KING STREET BAKERS | Banjara Hills, Hyderabad | ₹3,000 |
| 10 | KooX - Rooftop Asian Grill | T Nagar, Chennai | ₹3,000 |

### Observation

KOHINOOR HOTEL has a recorded cost of ₹300,350, which is substantially higher than the other records in the top 10. This value should be treated as a potential data anomaly and investigated before using it for conclusions about typical restaurant pricing.


## 5. Rating Distribution

The restaurant ratings were grouped into ranges to understand the overall distribution of ratings.

| Rating Range | Restaurant Count |
|---|---:|
| 4.5 - 5.0 | 2,552 |
| 4.0 - 4.4 | 15,679 |
| 3.5 - 3.9 | 11,903 |
| 3.0 - 3.4 | 3,521 |
| 2.5 - 2.9 | 920 |
| 2.0 - 2.4 | 268 |
| Below 2.0 | 83 |

### Observation

The largest rating group is 4.0–4.4 with 15,679 restaurant records, followed by the 3.5–3.9 range with 11,903 records. A relatively small number of restaurants fall below a 2.0 rating.



## 6. Cost vs Rating

Restaurants were grouped into cost ranges and compared using their average ratings.

| Cost Range | Restaurant Count | Average Rating |
|---|---:|---:|
| Below ₹200 | 5,208 | 3.90 |
| ₹200 - ₹299 | 13,472 | 3.86 |
| ₹300 - ₹399 | 8,327 | 3.88 |
| ₹400 - ₹499 | 3,961 | 3.95 |
| ₹500+ | 3,945 | 4.06 |

### Observation

The ₹500+ cost group has the highest average rating at 4.06, while the ₹200–₹299 group has the lowest average rating at 3.86 among the analyzed cost ranges. The results show differences in average ratings across price groups, but they do not establish that higher cost directly causes higher ratings.



## 7. Business Insights

The SQL analysis revealed several patterns across the Swiggy restaurant dataset:

- Restaurant records are concentrated in specific locations, with Bikaner having the highest count among the analyzed locations.
- Indian cuisine is the most frequently occurring individual cuisine category in the dataset.
- Several Bangalore and Chennai locations have average restaurant ratings above 4.15.
- The dataset contains some unusually high cost values, including a ₹300,350 record that may require further validation.
- Restaurants in the ₹500+ cost range had the highest average rating among the analyzed cost groups.
- The rating distribution is concentrated mainly in the 3.5–4.4 ranges.

These findings demonstrate how SQL can be used to clean restaurant data, perform aggregations, identify patterns, and generate business-oriented insights.



