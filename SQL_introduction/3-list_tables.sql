-- 3-list_tables.sql
-- Script to list all tables in a specified MySQL database

-- Connect to the MySQL server with the specified database
USE mysql;

-- Display the list of tables in the selected database
SELECT table_name
FROM information_schema.tables
WHERE table_schema = DATABASE();
