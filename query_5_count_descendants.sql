SELECT
    (location.rgt - location.lft - 1) DIV 2 AS num_descendants
FROM
    location
WHERE
    location.id = 3;