/*table players*/
CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(20),
    nationality VARCHAR(30),
    age INT
);
/*table match*/
/*table players stat*/
CREATE TABLE player_stat (
    stat_id SERIAL PRIMARY KEY,
    player_id INT,
    matches_played INT,
    starts INT,
    minutes INT,
    goals INT,
    assists INT,
    yellow_cards INT,
    red_cards INT
);

/* team stats*/
CREATE TABLE team_stats (

    id SERIAL PRIMARY KEY,

    match_id INT,

    possession FLOAT,

    expected_goals FLOAT,

    passes_completed INT,

    pressures INT,

    tackles INT,

    interceptions INT,

    FOREIGN KEY(match_id)
    REFERENCES matches(match_id)

);
