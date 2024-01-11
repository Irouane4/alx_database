-- 9-cities_by_state_subquery.sql

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Select cities with state names using a subquery
SELECT cities.id, cities.name, (SELECT states.name FROM states WHERE states.id = cities.state_id) AS state_name
FROM cities
ORDER BY cities.id;
