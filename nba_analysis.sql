-- PRIME DXF NBA demo: fictional player profiles, not official NBA data.
-- Import nba_demo.csv as nba_demo before running (SQLite or compatible SQL).
SELECT player, fictional_team, points_per_game, true_shooting_pct,
       ROUND(points_per_game * true_shooting_pct / 100.0, 2) AS illustrative_efficiency_index
FROM nba_demo
ORDER BY true_shooting_pct DESC;

-- Caution: the index above is a custom illustration, NOT a recognized NBA statistic.
-- True shooting percentage formula: PTS / (2 * (FGA + 0.44 * FTA)).
