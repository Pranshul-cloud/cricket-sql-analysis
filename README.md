

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

- Top run scorers and wicket-takers across seasons
- Most successful teams and captains
- Toss impact on match outcome
- Performance of players in powerplay vs death overs
- Matches with highest scores or tightest finishes

---

## 📎 Sample Query

```sql
SELECT player_name, SUM(runs) AS total_runs
FROM deliveries
GROUP BY player_name
ORDER BY total_runs DESC
LIMIT 10;
