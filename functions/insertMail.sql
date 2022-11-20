SELECT *FROM public.emails;

CREATE OR REPLACE FUNCTION insert_mail(VARCHAR,INT)
	RETURNS SETOF emails
AS $$
DECLARE
	mail_insert ALIAS FOR $1;
	enterprise_insert ALIAS FOR $2;
BEGIN
	INSERT INTO public.emails(mail,enterprise_id) VALUES(mail_insert, enterprise_insert);
	RAISE NOTICE 'SE REGISTRO CORRECTAMENT EL MAIL DE LA EMPRESA: %', enterprise_insert;
	RETURN QUERY SELECT *FROM public.emails;
END
$$ LANGUAGE PLPGSQL;