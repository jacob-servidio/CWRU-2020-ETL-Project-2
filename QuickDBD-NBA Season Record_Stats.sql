-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XuTZwP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-- Drop table if exists
Drop table IF EXISTS nba_team_record cascade;
Drop table IF EXISTS players cascade;
Drop table IF EXISTS season_stats cascade;

-- Creating tables
CREATE TABLE nba_team_record (
    year date   NOT NULL,
    team VARCHAR(5)   NOT NULL,
    wins INT   NOT NULL,
    losses INT   NOT NULL,
    win_percent INT   NOT NULL,
    CONSTRAINT pk_NBA_team_Record PRIMARY KEY (
        team
     )
);

CREATE TABLE players (
    id INT   NOT NULL,
    player VARCHAR(50)   NOT NULL,
    height INT   NOT NULL,
    weight INT   NOT NULL,
    college VARCHAR(50)   NOT NULL,
    born INT   NOT NULL,
    birth_city VARCHAR(50)   NOT NULL,
    birth_state VARCHAR(25)   NOT NULL,
	firstname VARCHAR(50)   NOT NULL,
	lastname VARCHAR(50)   NOT NULL,
    CONSTRAINT pk_Player PRIMARY KEY (
        id
     )
);

CREATE TABLE season_stats (
    playerID INT   NOT NULL,
    year int   NOT NULL,
    position VARCHAR(5)   NOT NULL,
    age INT   NOT NULL,
    tm VARCHAR(5)   NOT NULL,
    g INT   NOT NULL,
    ts_percent INT   NOT NULL,
    ftr INT   NOT NULL,
    ows INT   NOT NULL,
    dws INT   NOT NULL,
    ws INT   NOT NULL,
    fg INT   NOT NULL,
    fga INT   NOT NULL,
    fg_percent INT   NOT NULL,
    two_p INT   NOT NULL,
    two_pa INT   NOT NULL,
    twop_percent INT   NOT NULL,
    efg_percent INT   NOT NULL,
    ft INT   NOT NULL,
    fta INT   NOT NULL,
    ft_percent INT   NOT NULL,
    ast INT   NOT NULL,
    pf INT   NOT NULL,
    pts INT   NOT NULL
);

-- Adding foreign key constraint

ALTER TABLE season_stats ADD CONSTRAINT fk_Season_Stats_playerID FOREIGN KEY(playerID)
REFERENCES Players (id);

ALTER TABLE season_stats ADD CONSTRAINT fk_Season_Stats_tm FOREIGN KEY(tm)
REFERENCES NBA_team_Record (team);


