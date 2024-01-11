-- Print the full description of the table first_table

-- Use the information_schema to get the table definition
SELECT
  CONCAT(column_name, column_type,
         IF(is_nullable = 'NO', 'NOT NULL', ''),
         IF(column_default IS NOT NULL, CONCAT('DEFAULT ', column_default), ''),
         IF(extra = 'auto_increment', 'AUTO_INCREMENT', ''),
         IF(column_key = 'PRI', ', PRIMARY KEY (`', column_name, '`)','')
  ) AS column_definition
FROM information_schema.columns
WHERE table_schema = 'hbtn_0c_0' AND table_name = 'first_table';
