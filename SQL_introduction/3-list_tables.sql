-- 3-list_tables.sql

USE information_schema;

SELECT table_name
FROM tables
WHERE table_schema = DATABASE();
