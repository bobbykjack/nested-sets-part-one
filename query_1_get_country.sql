SELECT
    continent.name AS continent,
    country.name AS country
FROM
    continent,
    country
WHERE
        country.continent_id = continent.id
    AND country.id = '2'
;