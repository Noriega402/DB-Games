-- create function to insert enterprise
CREATE OR REPLACE FUNCTION insert_enterprise(VARCHAR)
	RETURNS SETOF enterprises
AS $$
DECLARE
	name ALIAS FOR $1;
BEGIN
	INSERT INTO enterprises(name_enterprise) VALUES(name);
	RAISE NOTICE 'Registro agregado!';
	RETURN QUERY SELECT *FROM enterprises WHERE name_enterprise = name;
END
$$ LANGUAGE PLPGSQL;

-- drop function
DROP FUNCTION insert_enterprise(VARCHAR);