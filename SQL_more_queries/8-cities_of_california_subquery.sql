-- This script retrieves all the cities of California using a subquery

SELECT cities.id, cities.name
FROM cities
WHERE cities.state_id = (
    SELECT states.id
    FROM states
    WHERE states.name = 'California'
);
