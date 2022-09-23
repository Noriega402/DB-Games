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