

# 🏏 Cricket SQL Analysis Project

This project explores and analyzes cricket match data using SQL. It focuses on generating actionable insights from historical IPL (Indian Premier League) data, including player performance, match outcomes, and team statistics.

---

## 📌 Project Objective

To demonstrate SQL skills by performing data exploration, cleaning, and analysis on a structured cricket dataset. The goal is to extract meaningful insights that can support strategic decisions in a real-world sports context.

---

## 📂 Dataset

- **Source:**  – Kaggle 


---

## 📊 Key SQL Queries & Insights

- Which players have scored more than 10,000 runs?
- Which player has the highest strike rate (SR)?
- List all Indian players and sort them by total runs (highest first).
- Which country has the most players in the top list?


---

## 📎 Sample Query

```sql
SELECT player_name, SUM(runs) AS total_runs
FROM deliveries
GROUP BY player_name
ORDER BY total_runs DESC
LIMIT 10;
