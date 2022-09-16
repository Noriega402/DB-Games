-- FUNCTIONS
CREATE OR REPLACE FUNCTION insert_enterprise(VARCHAR)
RETURNS SETOF enterprise AS
$$
DECLARE
	pquery TEXT;
BEGIN

	INSERT INTO enterprise(name_enterprise) VALUES ($1);
	RETURN QUERY SELECT *FROM enterprise;

END;
$$ LANGUAGE plpgsql;