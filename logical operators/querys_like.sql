--SELECCIONAR LOS JUEGOS QUE INICIEN CON "M" Y SIGAN CON CUALQUIER LETRA
SELECT g.name_game
FROM public.asig_game_console AS asig
INNER JOIN public.games AS g ON g.id = asig.game_id
INNER JOIN public.consoles AS c ON asig.console_id = c.id
WHERE g.name_game LIKE 'M%' AND c.id = 1;

SELECT g.name_game
FROM public.asig_game_console AS asig
INNER JOIN public.games AS g ON g.id = asig.game_id
INNER JOIN public.consoles AS c ON asig.console_id = c.id
WHERE g.name_game LIKE '%o';

--SELECCIONAR TODOS LOS JUEGOS QUE CONTENGAN UNA "A" EN MEDIO DE SU NOMBRE
SELECT g.name_game
FROM public.asig_game_console AS asig
INNER JOIN public.games AS g ON g.id = asig.game_id
INNER JOIN public.consoles AS c ON asig.console_id = c.id
WHERE g.name_game LIKE '%_a_%';

SELECT g.name_game
FROM public.asig_game_console AS asig
INNER JOIN public.games AS g ON g.id = asig.game_id
INNER JOIN public.consoles AS c ON asig.console_id = c.id
WHERE g.name_game LIKE '%_r_';