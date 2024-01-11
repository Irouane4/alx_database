-- Script to print the full description of the table first_table from the database hbtn_0c_0

USE hbtn_test_db_5; -- Select the specified database

-- Query to retrieve the table structure without using DESCRIBE or EXPLAIN
SELECT CONCAT(table_definition, engine_definition) AS Table_Create_Table
FROM (
  SELECT
    CONCAT('CREATE TABLE `', table_name, '` (\n', column_list, '\n)') AS table_definition,
    CONCAT('ENGINE=', engine, ' DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci') AS engine_definition
  FROM (
    SELECT
      table_name,
      GROUP_CONCAT(column_list ORDER BY ordinal_position SEPARATOR ',\n') AS column_list,
      MAX(engine) AS engine
    FROM (
      SELECT
        table_name,
        CONCAT('`', column_name, '` ', column_type,
               IF(is_nullable = 'NO', ' NOT NULL', ' NULL'),
               IF(column_default IS NOT NULL, CONCAT(' DEFAULT ', column_default), '')) AS column_list,
        ordinal_position,
        engine
      FROM information_schema.columns
      WHERE table_name = 'first_table'
      ORDER BY table_name, ordinal_position
    ) AS t1
    GROUP BY table_name
  ) AS t2
) AS t3;
