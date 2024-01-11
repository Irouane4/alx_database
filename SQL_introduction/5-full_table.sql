-- Script to print the full description of the table first_table from the database hbtn_0c_0

USE hbtn_0c_0; -- Select the specified database

-- Query to retrieve the table structure without using DESCRIBE or EXPLAIN
SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT, EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'first_table';

