-- =====================================================
-- Topic: Basic SQL Queries
-- selecting columns, filtering data, and sorting.
-- Dataset: CRICKET_CSV
-- =====================================================


-- =====================================================
-- Question 1: Players' Name and Their Countries
-- Description: Show each player's name along with their country.
-- =====================================================
SELECT PLAYER_NAME, NATION
FROM CRICKET_CSV;


-- =====================================================
-- Question 2: Top 5 Players with the Highest Runs
-- Description: Display the top 5 players who have scored the most runs, ordered from highest to lowest.
-- =====================================================
SELECT PLAYER_NAME , RUNS
FROM CRICKET_CSV
ORDER BY RUNS DESC
LIMIT 5;


-- =====================================================
-- Question 3: Players with More Than 10,000 Runs
-- Description: List all players who have scored more than 10,000 total runs in their career.
-- Difficulty: Basic
-- =====================================================
SELECT PLAYER_NAME
FROM CRICKET_CSV
WHERE RUNS>10000;


-- =====================================================
-- Question 4: Players Who Played More Than 300 Matches
-- Description: Display the names and match counts of players who have participated in over 300 matches.
-- Difficulty: Basic
-- =====================================================
SELECT PLAYER_NAME 
FROM CRICKET_CSV
WHERE MAT > 300;
















