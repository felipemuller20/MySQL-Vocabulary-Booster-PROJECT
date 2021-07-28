SELECT COUNTRY_NAME AS País,
	CASE
		WHEN COUNTRY_NAME = 'Belgium' THEN 'incluído'
        WHEN COUNTRY_NAME = 'France' THEN 'incluído'
        WHEN COUNTRY_NAME = 'Denmark' THEN 'incluído'
		WHEN COUNTRY_NAME = 'Germany' THEN 'incluído'
        WHEN COUNTRY_NAME = 'Netherlands' THEN 'incluído'
		WHEN COUNTRY_NAME = 'Switzerland' THEN 'incluído'
		WHEN COUNTRY_NAME = 'United Kingdom' THEN 'incluído'
    ELSE 'não incluído'
END AS `Status Inclusão`
FROM hr.countries;