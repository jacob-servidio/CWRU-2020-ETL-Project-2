CREATE TABLE NBA_team_Record (
    year INT   NOT NULL,
    team VARCHAR(5)   NOT NULL,
    wins INT   NOT NULL,
    losses INT   NOT NULL,
    win_percent INT   NOT NULL,
    CONSTRAINT pk_NBA_team_Record PRIMARY KEY (
        team
     )
);

CREATE TABLE Player (
    playerID INT   NOT NULL,
    player_Name VARCHAR(50)   NOT NULL,
    height INT   NOT NULL,
    weight INT   NOT NULL,
    college VARCHAR(50)   NOT NULL,
    born INT   NOT NULL,
    birth_city VARCHAR(50)   NOT NULL,
    birth_state VARCHAR(25)   NOT NULL,
    CONSTRAINT pk_Player PRIMARY KEY (
        playerID
     )
);

CREATE TABLE Season_Stats (
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
    Two_p INT   NOT NULL,
    Two_pa INT   NOT NULL,
    Twop_percent INT   NOT NULL,
    efg_percent INT   NOT NULL,
    ft INT   NOT NULL,
    fta INT   NOT NULL,
    ft_percent INT   NOT NULL,
    ast INT   NOT NULL,
    pf INT   NOT NULL,
    pts INT   NOT NULL
);

ALTER TABLE Season_Stats ADD CONSTRAINT fk_Season_Stats_playerID FOREIGN KEY(playerID)
REFERENCES Player (playerID);

ALTER TABLE Season_Stats ADD CONSTRAINT fk_Season_Stats_tm FOREIGN KEY(tm)
REFERENCES NBA_team_Record (team);
