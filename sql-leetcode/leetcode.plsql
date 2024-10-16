/* Write your PL/SQL query statement below */
-- 196. Delete Duplicate Emails
DELETE FROM Person
WHERE id NOT IN (
    SELECT id
    FROM (
        SELECT MIN(id) AS id
        FROM Person
        GROUP BY email
    ) AS p
);