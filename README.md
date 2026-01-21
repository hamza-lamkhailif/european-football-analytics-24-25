# European Football Analytics | 24–25

A professional data analytics dashboard analyzing match data from **6 top European football leagues** during the **2024–2025 season**.  
Built with **MySQL** for data storage and **Power BI** for visual analytics.

---

## 🏟 Dataset

The dataset contains:

| Column                        | Description                     |
| ----------------------------- | ------------------------------- |
| match_id                      | Unique ID for each match        |
| competition_code              | League code (PL, BL1, SA, etc.) |
| competition_name              | League name                     |
| season                        | Season (2024–2025)              |
| match_day                     | Matchday number                 |
| stage                         | Stage of competition            |
| status                        | Finished / Awarded              |
| date_utc                      | Match date & time (UTC)         |
| referee                       | Referee name                    |
| home_team / away_team         | Team names                      |
| fulltime_home / fulltime_away | Full-time scores                |
| halftime_home / halftime_away | Half-time scores                |
| goal_difference               | Home-Away goals difference      |
| total_goals                   | Total goals in match            |
| match_outcome                 | Home Win / Away Win / Draw      |
| home_points / away_points     | Points awarded                  |
| referee_id                    | Referee unique ID               |

---

## 📊 Key Metrics & Features

- **Total Matches & Goals**
- **Average Goals per Match**
- **Home / Away / Draw % by league**
- **Match Outcome Distribution**
- **Goals Trend Over Matchdays**
- **Home Advantage Index (optional advanced metric)**

---

## 🛠 Technologies Used

- **MySQL** – Database and queries
- **Power BI** – Interactive dashboard and visualization
- **DAX** – Calculated measures and KPIs
- **Excel** – Data cleaning and preprocessing

---

## 🚀 How to Use

1. Load `football_matches_24_25.csv` into MySQL:
   ```sql
   source sql/create_tables.sql;
   source sql/insert_data.sql;
   ```
2. Open Power BI file: `powerbi/football_dashboard.pbix`
3. Connect to MySQL database or CSV file
4. Use side panel slicers to explore: League, Season, Matchday, Outcome

---

## 📈 Insights

- Home advantage exists across all leagues
- Premier League has the **highest average goals per match**
- Goal scoring tends to increase in **second half of the season**
- Draw rate is higher in defensive leagues like **Serie A**

---

## 📝 Author

**Hamza Lamkhailif** – Junior Data Analyst | Portfolio Project

---

## 📜 License

This project is licensed under the MIT License – see `LICENSE` file for details.
