-- insert_data.sql
-- Insert data from CSV file into matches table

-- Option 1: Using LOAD DATA INFILE (if allowed)
-- Make sure secure-file-priv allows your path
-- LOAD DATA INFILE '/path/to/football_matches_24_25.csv'
-- INTO TABLE matches
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS
-- (match_id, competition_code, competition_name, season, match_day, stage, status,
--  date_utc, referee, home_team_id, home_team, away_team_id, away_team,
--  fulltime_home, fulltime_away, halftime_home, halftime_away, goal_difference,
--  total_goals, match_outcome, home_points, away_points, referee_id);

-- Option 2: Using INSERT statements (small sample for demo)
INSERT INTO matches 
(match_id, competition_code, competition_name, season, match_day, stage, status, date_utc,
referee, home_team_id, home_team, away_team_id, away_team, fulltime_home, fulltime_away,
halftime_home, halftime_away, goal_difference, total_goals, match_outcome, home_points, away_points, referee_id)
VALUES
(1, 'PL', 'Premier League', '2024-2025', 1, 'Regular Season', 'Finished', '2024-08-10 15:00:00',
 'Michael Oliver', 101, 'Manchester United', 102, 'Chelsea', 2, 1, 1, 0, 1, 3, 'Home Win', 3, 0, 9001),
(2, 'BL1', 'Bundesliga', '2024-2025', 1, 'Regular Season', 'Finished', '2024-08-11 18:30:00',
 'Daniel Siebert', 201, 'Bayern Munich', 202, 'Borussia Dortmund', 3, 2, 1, 1, 1, 5, 'Home Win', 3, 0, 9002),
(3, 'SA', 'Serie A', '2024-2025', 1, 'Regular Season', 'Finished', '2024-08-12 20:00:00',
 'Daniele Orsato', 301, 'Juventus', 302, 'Inter Milan', 1, 1, 0, 0, 0, 2, 'Draw', 1, 1, 9003);

-- For full dataset: repeat or use LOAD DATA INFILE
