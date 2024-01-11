-- Print the full description of the table first_table

-- Use the information_schema to get the table definition
SELECT CONCAT('first_table ', create_statement)
FROM information_schema.tables
WHERE table_schema = 'hbtn_test_db_5' AND table_name = 'first_table';
