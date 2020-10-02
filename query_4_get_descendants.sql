SELECT
    descendant.id,
    descendant.name
FROM
    location descendant,
    location original
WHERE
        original.lft < descendant.lft
    AND original.rgt > descendant.rgt
    AND original.id = 1;