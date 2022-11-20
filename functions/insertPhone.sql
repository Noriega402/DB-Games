SELECT *FROM public.enterprises;
SELECT *FROM public.phones;
SELECT *FROM public.emails;

CREATE OR REPLACE FUNCTION insert_phone(INT,INT)
	RETURNS SETOF phones
AS $$
 DECLARE
  number_phone ALIAS FOR $1;
  empresa ALIAS FOR $2;
 BEGIN
	INSERT INTO public.phones(phone,enterprise_id) VALUES(number_phone, empresa);
	RAISE NOTICE 'SE AGREGO UN NUEVO NUMERO DE TELEFONO PARA LA EMPRESA: %',empresa;
	RETURN QUERY SELECT *FROM public.phones WHERE phone = number_phone;
END
$$ LANGUAGE PLPGSQL;