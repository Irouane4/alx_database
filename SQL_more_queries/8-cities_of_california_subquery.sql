-- 8-cities_of_california_subquery.sql

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Select cities of California using a subquery
SELECT id, name
FROM cities
WHERE state_id = (SELECT id FROM states WHERE name = 'California')
ORDER BY id;
