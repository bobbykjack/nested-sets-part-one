SELECT
    p1.name AS place1,
    p2.name AS place2,
    p3.name AS place3
FROM
    place p1,
    place p2,
    place p3
WHERE
        p1.id = '4'
    AND p2.id = p1.parent_place
    AND p3.id = p2.parent_place;