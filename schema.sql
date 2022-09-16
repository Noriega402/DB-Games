-- SCHEMA
CREATE TABLE enterprises(
    id SERIAL PRIMARY KEY,
    name_enterprise CHARACTER VARYING not null
);

CREATE TABLE phones(
    id SERIAL PRIMARY KEY,
    phone NUMERIC (8,0) NOT NULL UNIQUE,
    enterprise_id INTEGER
);

ALTER TABLE phones
ADD CONSTRAINT phones_enterprises_fk
FOREIGN KEY (enterprise_id)
REFERENCES enterprises(id)
ON DELETE SET NULL;

CREATE TABLE emails(
    id SERIAL PRIMARY KEY,
    mail CHARACTER VARYING NOT NULL UNIQUE,
    enterprise_id INTEGER
);

ALTER TABLE emails
ADD CONSTRAINT emails_enterprises_fk
FOREIGN KEY (enterprise_id)
REFERENCES enterprises(id)
ON DELETE SET NULL;

CREATE TABLE games(
    id SERIAL PRIMARY KEY,
    name_game CHARACTER VARYING NOT NULL,
    date_creation date,
    enterprise_id INTEGER
);

ALTER TABLE games
ADD CONSTRAINT games_enterprises_fk
FOREIGN KEY (enterprise_id)
REFERENCES enterprises(id)
ON DELETE SET NULL;

CREATE TABLE consoles(
    id SERIAL PRIMARY KEY,
    name_console CHARACTER VARYING NOT NULL,
);

CREATE TABLE asig_game_console(
    id SERIAL PRIMARY KEY,
    game_id INTEGER,
    console_id INTEGER
);

ALTER TABLE asig_game_console
ADD CONSTRAINT asig_game_console__games_fk
FOREIGN KEY (game_id)
REFERENCES games(id)
ON DELETE CASCADE;