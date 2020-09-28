DROP TABLE IF EXISTS results;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    coach VARCHAR(255),
    wins INT,
    losses INT
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    rating INT
);

CREATE TABLE results (
    ID SERIAL PRIMARY KEY,
    scores INT,
    team_id INT REFERENCES teams(id) ON DELETE CASCADE,
    game_id INT REFERENCES games(id) ON DELETE CASCADE
);