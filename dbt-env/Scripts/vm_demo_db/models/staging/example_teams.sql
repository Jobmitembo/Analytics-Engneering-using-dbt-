-- models/nba_team_names.sql

-- Create a staging table to hold raw data 
WITH raw_data AS (
  SELECT
    'Lakers' AS team
  UNION ALL
  SELECT
    'Clippers' AS team
  UNION ALL
  SELECT
    '76ers' AS team
  UNION ALL
  SELECT
    'Heat' AS team
)


SELECT
  team
FROM raw_data
