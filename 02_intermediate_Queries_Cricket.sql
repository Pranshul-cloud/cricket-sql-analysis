select * from cricket_csv;
-- =====================================================
-- Topic: Advanced Queries
-- Joins, Subqueries, Window Functions, CTEs
-- Dataset: CRICKET_CSV
-- =====================================================

-- =====================================================
-- 9. List all Indian players and sort them by total runs (highest first).
-- Show: player_name, country, total_runs
-- Filter: Only Indian players
-- Sort: total_runs DESC
-- =====================================================
select player_name , nation , runs
from cricket_csv
where nation = 'india'
order by runs desc;

-- =====================================================
-- 10. Extract the start year and end year from the “Span” column and show how many years each player played.
-- Show: player_name, start_year, end_year, career_length
-- Hint: Use string functions or SUBSTR to split the span and calculate difference
-- =====================================================
SELECT 
    player_name,
    LEFT(Span, 4) AS start_year,
    RIGHT(Span, 4) AS end_year,
    RIGHT(Span, 4) - LEFT(Span, 4) AS career_length
FROM 
    CRICKET_CSV;
    
    -- =====================================================
    -- 11. Find the top 3 players with the best average per ball faced (Runs / BF).
-- Show: player_name, Runs, BF, avg_per_ball
-- Sort: avg_per_ball DESC
-- Limit: Top 3 only
-- =====================================================
select player_name , runs , bf , (runs/bf)as avg_per_ball
from cricket_csv
where bf > 0
order by avg_per_ball desc
limit 3;

-- =====================================================
-- 12. Find the players who have more 50s than 100s.
-- Show: player_name, 100s, 50s
-- Condition: 50s > 100s
-- =====================================================
SELECT 
    player_name, 
    `100` AS centuries, 
    `50` AS fifties
FROM 
    cricket_csv
WHERE 
    `50` > `100`;
    