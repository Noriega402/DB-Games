CREATE OR REPLACE FUNCTION insert_game(VARCHAR,DATE,INTEGER)
	RETURNS SETOF games
AS $$
DECLARE
	name ALIAS FOR $1;
	created ALIAS FOR $2;
	enterprise ALIAS FOR $3;
BEGIN
	INSERT INTO games(name_game,date_creation,enterprise_id) VALUES(name,created,enterprise);
	RAISE NOTICE 'Juego creado exitosamente!';
	RETURN QUERY SELECT *FROM games WHERE name_game = name;
END
$$ LANGUAGE PLPGSQL;

--drop function
DROP FUNCTION insert_game(VARCHAR,DATE,INTEGER);