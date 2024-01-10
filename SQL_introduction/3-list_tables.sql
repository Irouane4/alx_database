-- 3-list_tables.sql

USE information_schema;

SET @db_name = DATABASE();

SELECT
  IFNULL(GROUP_CONCAT(table_name), CONCAT('No tables found in database ', @db_name)) AS Tables_in_@db_name
FROM tables
WHERE table_schema = @db_name;
