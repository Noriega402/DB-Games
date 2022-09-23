# DB-Games
Video game database, stored procedures, triggers and views, csv.

[- Schema of DB](https://github.com/Noriega402/DB-Games/blob/main/schema.sql)

[- Learning stored procedures](https://github.com/Noriega402/DB-Games/blob/main/learningProcedures.sql)

[- Create functions with PLPGSQL](https://github.com/Noriega402/DB-Games/tree/main/functions)

[- Insert record of games with functions](https://github.com/Noriega402/DB-Games/blob/main/inserts/insertsGames.sql)

To insert bulk data into the games table from postgreSQL with a CVS file you can use [**this**](https://github.com/Noriega402/DB-Games/blob/main/inserts/games.txt) file and the following command:

`COPY games FROM 'C:\Users\HP INTEL\Desktop\DB-Games\inserts\games.txt' USING DELIMITERS ','`

_(The path will depend on where you have stored the file juegos.txt)_

[- Querys](https://github.com/Noriega402/DB-Games/blob/main/querys.sql)
