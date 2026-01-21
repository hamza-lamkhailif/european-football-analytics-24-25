-- analysis_queries.sql
-- Queries for insights on European Football Matches 2024-2025

-- 1️⃣ Total Matches per League
SELECT competition_name, COUNT(match_id) AS total_matches
FROM matches
GROUP BY competition_name
ORDER BY total_matches DESC;

-- 2️⃣ Total Goals per League
SELECT competition_name, SUM(total_goals) AS total_goals
FROM matches
GROUP BY competition_name
ORDER BY total_goals DESC;

-- 3️⃣ Average Goals per Match per League
SELECT competition_name, AVG(total_goals) AS avg_goals_per_match
FROM matches
GROUP BY competition_name
ORDER BY avg_goals_per_match DESC;

-- 4️⃣ Home / Away / Draw counts per League
SELECT competition_name,
       SUM(CASE WHEN match_outcome='Home Win' THEN 1 ELSE 0 END) AS home_wins,
       SUM(CASE WHEN match_outcome='Away Win' THEN 1 ELSE 0 END) AS away_wins,
       SUM(CASE WHEN match_outcome='Draw' THEN 1 ELSE 0 END) AS draws
FROM matches
GROUP BY competition_name
ORDER BY competition_name;

-- 5️⃣ Home Win %, Away Win %, Draw % per League
SELECT competition_name,
       ROUND(SUM(CASE WHEN match_outcome='Home Win' THEN 1 ELSE 0 END)/COUNT(match_id)*100,2) AS home_win_pct,
       ROUND(SUM(CASE WHEN match_outcome='Away Win' THEN 1 ELSE 0 END)/COUNT(match_id)*100,2) AS away_win_pct,
       ROUND(SUM(CASE WHEN match_outcome='Draw' THEN 1 ELSE 0 END)/COUNT(match_id)*100,2) AS draw_pct
FROM matches
GROUP BY competition_name
ORDER BY competition_name;

-- 6️⃣ Goals trend over Matchdays
SELECT match_day, AVG(total_goals) AS avg_goals
FROM matches
GROUP BY match_day
ORDER BY match_day;

-- 7️⃣ Home Advantage Index per League
SELECT competition_name,
       ROUND(SUM(CASE WHEN match_outcome='Home Win' THEN 1 ELSE 0 END)/COUNT(match_id)*100,2) -
       ROUND(SUM(CASE WHEN match_outcome='Away Win' THEN 1 ELSE 0 END)/COUNT(match_id)*100,2) AS home_advantage_index
FROM matches
GROUP BY competition_name
ORDER BY home_advantage_index DESC;
