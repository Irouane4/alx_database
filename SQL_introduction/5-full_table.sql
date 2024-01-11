-- Script to print the full description of the table first_table from the database hbtn_0c_0

USE hbtn_test_db_5; -- Select the specified database

-- Query to retrieve the table structure without using DESCRIBE or EXPLAIN
SELECT
  CONCAT(table_name, 'CREATE TABLE', column_list, ') ENGINE=', engine, ' DEFAULT CHARSET=', table_collation) AS Table_Create_Table
FROM (
  SELECT
    table_name,
    GROUP_CONCAT(column_list ORDER BY ordinal_position SEPARATOR ''),
    table_collation,
    engine
  FROM (
    SELECT
      table_name,
      '(' AS column_list
    FROM
      information_schema.columns
    WHERE
      table_name = 'first_table'
    GROUP BY
      table_name
    UNION ALL
    SELECT
      table_name,
      CONCAT(
        '`', column_name, '`', column_type,
        IF(is_nullable = 'NO', 'NOT NULL', 'NULL'),
        IF(column_default IS NOT NULL, CONCAT('DEFAULT ', column_default), ''),
        ','
      ) AS column_list,
      '' AS table_collation,
      '' AS engine
    FROM
      information_schema.columns
    WHERE
      table_name = 'first_table'
    ORDER BY
      table_name,
      ordinal_position
  ) AS t1
  GROUP BY
    table_name
) AS t2;
