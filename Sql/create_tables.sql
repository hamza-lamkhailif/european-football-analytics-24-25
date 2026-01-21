-- create_tables.sql
-- Table for European Football Matches 2024-2025

CREATE DATABASE IF NOT EXISTS football_analytics;
USE football_analytics;

DROP TABLE IF EXISTS matches;

CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    competition_code VARCHAR(10),
    competition_name VARCHAR(50),
    season VARCHAR(20),
    match_day INT,
    stage VARCHAR(50),
    status VARCHAR(20),
    date_utc DATETIME,
    referee VARCHAR(100),
    home_team_id INT,
    home_team VARCHAR(50),
    away_team_id INT,
    away_team VARCHAR(50),
    fulltime_home INT,
    fulltime_away INT,
    halftime_home INT,
    halftime_away INT,
    goal_difference INT,
    total_goals INT,
    match_outcome VARCHAR(20),
    home_points INT,
    away_points INT,
    referee_id INT
);
