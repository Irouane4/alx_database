-- Print the full description of the table first_table

-- Use the information_schema to get the table definition
SELECT column_name, column_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_schema = 'hbtn_0c_0' AND table_name = 'first_table';
