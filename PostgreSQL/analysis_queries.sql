-- Top 10 players by goal contribution (Goals + Assists)
query = """
SELECT 
    p.name AS player,
    ps.goals,
    ps.assists,
    (ps.goals + ps.assists) AS goal_contribution
FROM players p
JOIN player_stat ps
ON p.player_id = ps.player_id
ORDER BY goal_contribution DESC
LIMIT 10;
"""

contribution = pd.read_sql(query, connection)

contribution

-- Top 10 Goal Scorers
query = """
SELECT 
    p.name AS player,
    ps.goals
FROM players p
JOIN player_stat ps
ON p.player_id = ps.player_id
ORDER BY ps.goals DESC
LIMIT 10;
"""

top_scorers = pd.read_sql(query, connection)

top_scorers

--top assists
query = """
SELECT 
    p.name AS player,
    ps.assists
FROM players p
JOIN player_stat ps
ON p.player_id = ps.player_id
ORDER BY ps.assists DESC;
"""

top_assists = pd.read_sql(query, connection)



