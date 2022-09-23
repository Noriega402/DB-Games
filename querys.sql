SELECT *FROM enterprises;
SELECT *FROM games;

-- select company and game
SELECT e.name_enterprise as enterprise, g.name_game as name
FROM games as g
INNER JOIN enterprises as e ON e.id = g.id_enterprise;

-- select the total number of sets belonging to X company
SELECT COUNT(*) FROM games WHERE games.id_enterprise = 1;

-- concatenate company name and email
SELECT CONCAT('Empresa: ',enterprises.name_enterprise,' Correo: ',enterprises.mail ) as contacto
FROM enterprises;

-- Count the total number of registered games
SELECT COUNT(*) FROM games;

-- Count the total number of registered companies
SELECT COUNT(*) FROM enterprises;