-- This script prints the full description of the table first_table from the database hbtn_0c_0

SELECT TABLE_NAME AS 'Table',
       CONCAT('CREATE TABLE `', TABLE_NAME, '` (',\n GROUP_CONCAT(\n    CONCAT(' `', COLUMN_NAME, '` ', COLUMN_TYPE, IF(IS_NULLABLE = 'NO', ' NOT NULL', '')) SEPARATOR ', '),\n ') ENGINE=', ENGINE, ' DEFAULT CHARSET=', TABLE_COLLATION, ';\n') AS 'Create Table'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0'
 AND TABLE_NAME = 'first_table'
GROUP BY TABLE_NAME, ENGINE, TABLE_COLLATION;