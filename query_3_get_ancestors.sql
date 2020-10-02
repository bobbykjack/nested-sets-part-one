SELECT
    ancestor.id,
    ancestor.name
FROM
    location ancestor,
    location original
WHERE
        original.lft > ancestor.lft
    AND original.rgt < ancestor.rgt
    AND original.id = 5;