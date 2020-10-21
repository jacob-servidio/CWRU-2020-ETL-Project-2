-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XuTZwP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "NBA_team_Record" (
    "year" INT   NOT NULL,
    "team" VARCHAR(5)   NOT NULL,
    "wins" INT   NOT NULL,
    "losses" INT   NOT NULL,
    "win%" INT   NOT NULL,
    CONSTRAINT "pk_NBA_team_Record" PRIMARY KEY (
        "team"
     )
);

CREATE TABLE "Player" (
    "playerID" INT   NOT NULL,
    "player_Name" VARCHAR(50)   NOT NULL,
    "height" INT   NOT NULL,
    "weight" INT   NOT NULL,
    "college" VARCHAR(50)   NOT NULL,
    "born" INT   NOT NULL,
    "birth_city" VARCHAR(50)   NOT NULL,
    "birth_state" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_Player" PRIMARY KEY (
        "playerID"
     )
);

CREATE TABLE "Season_Stats" (
    "playerID" INT   NOT NULL,
    "year" int   NOT NULL,
    "position" VARCHAR(5)   NOT NULL,
    "age" INT   NOT NULL,
    "tm" VARCHAR(5)   NOT NULL,
    "g" INT   NOT NULL,
    "ts%" INT   NOT NULL,
    "ftr" INT   NOT NULL,
    "ows" INT   NOT NULL,
    "dws" INT   NOT NULL,
    "ws" INT   NOT NULL,
    "fg" INT   NOT NULL,
    "fga" INT   NOT NULL,
    "fg%" INT   NOT NULL,
    "2p" INT   NOT NULL,
    "2pa" INT   NOT NULL,
    "2p%" INT   NOT NULL,
    "efg%" INT   NOT NULL,
    "ft" INT   NOT NULL,
    "fta" INT   NOT NULL,
    "ft%" INT   NOT NULL,
    "ast" INT   NOT NULL,
    "pf" INT   NOT NULL,
    "pts" INT   NOT NULL
);

ALTER TABLE "Season_Stats" ADD CONSTRAINT "fk_Season_Stats_playerID" FOREIGN KEY("playerID")
REFERENCES "Player" ("playerID");

ALTER TABLE "Season_Stats" ADD CONSTRAINT "fk_Season_Stats_tm" FOREIGN KEY("tm")
REFERENCES "NBA_team_Record" ("team");

