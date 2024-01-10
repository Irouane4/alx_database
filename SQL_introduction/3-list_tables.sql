-- 3-list_tables.sql
-- Task: List all tables in the specified database.

USE INFORMATION_SCHEMA;

SET @DB_NAME = DATABASE();

-- Retrieve the list of tables or display a message if none found.
SELECT
  IFNULL(GROUP_CONCAT(TABLE_NAME), CONCAT('No tables found in database ', @DB_NAME)) AS Tables_in_@DB_NAME
FROM TABLES
WHERE TABLE_SCHEMA = @DB_NAME;
