SELECT *FROM enterprises;
SELECT *FROM games;

-- select company and game
SELECT e.name_enterprises as enterprises, g.name_game as name
FROM games as g
INNER JOIN enterprises as e ON e.id = g.id_enterprises;

-- select the total number of sets belonging to X company
SELECT COUNT(*) FROM games WHERE games.id_enterprises = 1;

-- concatenate company name and email
SELECT CONCAT('Empresa: ',enterprises.name_enterprises,' Correo: ',enterprises.mail ) as contacto
FROM enterprises;

-- select the games from 2000 onwards
SELECT games.name_game as "Juegos de los 2000" FROM games WHERE fecha > 1999;

-- Count the total number of registered games
SELECT COUNT(*) FROM games;

-- Count the total number of registered companies
SELECT COUNT(*) FROM enterprises;


-- call function
SELECT listar_games(); -- ver en Messages
