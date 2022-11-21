-- SELECCIONAR INFORMACION DE LOS DATOS DE LA EMPRESA
SELECT e.name_enterprise AS ENTERPRISE, m.mail AS CONTACT, p.phone AS PHONE
FROM public.enterprises AS e
INNER JOIN public.emails AS m ON m.enterprise_id = e.id
INNER JOIN public.phones AS p ON p.enterprise_id = e.id;

-- SELECCIONAR LOS JUEGOS QUE SEAN DE LA EMPRESA DE NINTENDO
SELECT g.name_game AS "Games of enterprise" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE e.id = 1;

-- SELECCIONAR LOS JUEGOS QUE SEAN DE LA EMPRESA DE CAPCOM
SELECT g.name_game AS "Games of enterprise" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE e.id = 2;

-- SELECCIONAR LOS JUEGOS QUE SEAN DE LA EMPRESA DE SEGA
SELECT g.name_game AS "Games of enterprise" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE e.id = 3;

-- SELECCIONAR LOS JUEGOS QUE SEAN DE LA EMPRESA DE SEGA
SELECT g.name_game AS "Games of enterprise" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE e.id = 6;

-- CONTAR CANTIDAD DE JUEGOS QUE POSEE X EMPRESA
SELECT COUNT(*) AS "TOTAL NINTENDO" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE g.enterprise_id = 1;

-- CONTAR CANTIDAD DE JUEGOS QUE POSEE X EMPRESA
SELECT COUNT(*) AS "TOTAL CAPCOM" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE g.enterprise_id = 2;

-- CONTAR CANTIDAD DE JUEGOS QUE POSEE X EMPRESA
SELECT COUNT(*) AS "TOTAL PS" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE g.enterprise_id = 6;

-- CONTAR CANTIDAD DE JUEGOS QUE POSEE X EMPRESA
SELECT COUNT(*) AS "TOTAL SONY" FROM public.enterprises AS e
INNER JOIN public.games AS g ON g.enterprise_id = e.id
WHERE g.enterprise_id = 15;

-- SELECCIONAR JUEGOS CON LAS CONSOLAS COMPATIBLES
SELECT g.name_game, c.name_console
FROM public.asig_game_console AS asig
INNER JOIN public.games AS g ON g.id = asig.game_id
INNER JOIN public.consoles AS c ON c.id = asig.console_id;