SELECT *FROM enterprise;
SELECT *FROM games;

-- select company and game
SELECT e.name_enterprise as enterprise, g.name_game as name
FROM games as g
INNER JOIN enterprise as e ON e.id = g.id_enterprise;

-- select the total number of sets belonging to X company
SELECT COUNT(*) FROM games WHERE games.id_enterprise = 1;

-- concatenate company name and email
SELECT CONCAT('Empresa: ',enterprise.name_enterprise,' Correo: ',enterprise.mail ) as contacto
FROM enterprise;

-- select the games from 2000 onwards
SELECT games.name_game as "Juegos de los 2000" FROM games WHERE fecha > 1999;

-- Count the total number of registered games
SELECT COUNT(*) FROM games;

-- Count the total number of registered companies
SELECT COUNT(*) FROM enterprise;

-- Sintax of Procedures Languages
DO $$ --bloque de codigo ($$ abriendo simbolo del bloque de codigo)
BEGIN -- comienzo del codigo
	RAISE NOTICE 'Mensaje desde la consola de postgreSQL';
END $$ -- fin del codigo ($$ cerrando simbolo del bloque de cdigo)

-- Procedure Languages
DO $$
DECLARE
	obtener record; -- record es para almacenar los datos de una fila
BEGIN
	FOR obtener IN SELECT *FROM games LOOP -- for para recorrer toos los datos de la tabla games
		RAISE NOTICE 'El nombre del juego es: %', obtener.name_game; --(% reeemplaza a obtener.name_game)
	END LOOP; -- teminar el bucle
END $$

-- Procedure Languages 2
DO $$
DECLARE
	des record;
	counter integer := 0; --(:= es para asignar un valor propio de Postgres)
BEGIN
	FOR des IN SELECT *FROM games LOOP
		RAISE NOTICE 'Nombre del juego: % el año lanzado es: %', des.name_game, des.fecha;
		counter := counter + 1;
	END LOOP;
	RAISE NOTICE 'El total de juegos en la base de datos es de: %', counter;
END $$

-- Asignar a una funcion

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