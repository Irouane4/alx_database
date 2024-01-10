-- 3-list_tables.sql

USE information_schema;

SET @db_name = DATABASE();

SELECT
  CASE
    WHEN COUNT(*) = 0 THEN 'No tables found in database ' + @db_name
    ELSE GROUP_CONCAT(table_name)
  END AS Tables_in_@db_name
FROM tables
WHERE table_schema = @db_name;
