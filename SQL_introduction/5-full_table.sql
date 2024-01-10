-- Print the full description of the table first_table

-- Use the information_schema to get the table definition
SELECT table_name, create_table
FROM information_schema.tables
WHERE table_schema = DATABASE() AND table_name = 'first_table';
