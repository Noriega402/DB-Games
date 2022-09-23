-- create function to list games
CREATE OR REPLACE FUNCTION listar_games()
	RETURNS VOID
AS $$
DECLARE
	des record;
	counter integer := 0; --(:= es para asignar un valor propio de Postgres)
BEGIN
	FOR des IN SELECT *FROM games LOOP
		RAISE NOTICE 'Nombre del juego: % el año lanzado es: %', des.name_game, des.fecha;
		counter := counter + 1;
	END LOOP;
	RAISE NOTICE 'El total de juegos en la base de datos es de: %', counter;
END
$$ LANGUAGE PLPGSQL;

SELECT listar_games(); -- ver en Messages

-- drop function
DROP FUNCTION listar_games();