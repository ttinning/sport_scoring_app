DROP TABLE IF EXISTS fixtures;
DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255)
);

CREATE TABLE fixtures (
    id SERIAL PRIMARY KEY,
    team_1 SERIAL REFERENCES teams(id) ON DELETE CASCADE,
    team_1_score INT,
    team_2 SERIAL REFERENCES teams(id) ON DELETE CASCADE,
    team_2_score INT
);

