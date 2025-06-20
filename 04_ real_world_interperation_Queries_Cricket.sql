select * from cricket_csv;
-- =====================================================
-- Topic: Business Insight
-- Real-World Interpretation
-- Dataset: CRICKET_CSV
-- =====================================================
-- =====================================================
-- Question 13: Most Consistent Player (Based on Average + Strike Rate)
-- Description: Find the player with the highest consistency score, calculated as 
--              (total_runs / matches) + ((total_runs / balls_faced) * 100). 
--              Return player name, average, strike rate, and consistency score.
-- =====================================================
select player_name ,
ave,
sr,
(
(runs/mat)+(runs/bf)*100)
as consistency_score
from cricket_csv;

-- =====================================================
-- Question 14: Top 3 Most Impactful Players
-- Description: Identify the top 3 players with the highest impact score based on the formula: 
--              Impact Score = total_runs + (hundreds * 25) + (fifties * 10).
--              Return player name and their calculated impact score.
-- =====================================================
SELECT 
  player_name,
  (runs + ("100" * 25) + ("50" * 10)) AS impact_score
FROM cricket_csv
ORDER BY impact_score DESC
LIMIT 3;

-- =====================================================
-- Question 15: Country with the Most Players in the Top 10 list
-- Description: Extract the country name from the 'player' column (assuming the format includes it, like 'Virat Kohli (India)') 
--              and determine which country has the most players in the list. 
--              Use string functions to extract country, then group and count.
-- =====================================================
WITH top_10 AS (
  SELECT player_name, nation, runs
  FROM cricket_csv
  ORDER BY runs DESC
  LIMIT 10
)
SELECT 
  nation,
  COUNT(*) AS player_count
FROM top_10
GROUP BY nation
ORDER BY player_count DESC
LIMIT 1;

-- =====================================================
-- Question 16: High-Average Players Since 2010
-- Description: List all players who played during or after the year 2010 
--              and had a batting average greater than 45.
--              Use the 'start_year' or similar column to filter by playing period.
-- =====================================================
SELECT 
  player_name,
  ave,
  span
FROM cricket_csv
WHERE CAST(SUBSTRING_INDEX(span, '-', 1) AS UNSIGNED) >= 2010
  AND ave > 45;
