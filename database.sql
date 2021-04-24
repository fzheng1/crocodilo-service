CREATE DATABASE crocodiloDB;

--\c into crocodiloDB

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    discord_id character varying(200) NOT NULL
);

CREATE TABLE guilds(
    id SERIAL PRIMARY KEY
);

CREATE TABLE portfolios(
    player_id integer NOT NULL,
    guild_id integer NOT NULL,
    croc_koins integer,
    PRIMARY KEY (player_id, guild_id),
    CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES players (id),
    CONSTRAINT fk_guild_id FOREIGN KEY (guild_id) REFERENCES guilds (id)
);

CREATE TABLE accounts(
    id SERIAL PRIMARY KEY,
    player_id integer NOT NULL,
    summoner_name character varying(200) NOT NULL,
    riot_account_id character varying(200) NOT NULL,
    CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES players (id)
);

CREATE TABLE stocks(
    portfolio_id integer NOT NULL,
    account_id integer NOT NULL,
    shares integer NOT NULL,
    PRIMARY KEY (portfolio_id, account_id),
    CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES players (id),
    CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES accounts (id)
);

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    account_id integer NOT NULL,
    CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES accounts (id)
);

CREATE TABLE bets(
    player_id integer NOT NULL,
    match_id integer NOT NULL,
    amount integer,
    result boolean,
    PRIMARY KEY (player_id, match_id),
    CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES players (id),
    CONSTRAINT fk_match_id FOREIGN KEY (match_id) REFERENCES matches (id)
);
