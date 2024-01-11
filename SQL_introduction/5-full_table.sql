-- This script prints the full description of the table first_table from the database hbtn_0c_0 in your MySQL server.
-- The database name will be passed as an argument of the mysql command.
-- This script is compatible with MySQL 5.7.

SELECT TABLE_NAME AS 'Table',
       CREATE_OPTIONS AS 'Create Options',
       TABLE_TYPE AS 'Table Type',
       ENGINE AS 'Engine',
       VERSION AS 'Version',
       ROW_FORMAT AS 'Row Format',
       TABLE_ROWS AS 'Rows',
       AVG_ROW_LENGTH AS 'Avg Row Length',
       DATA_LENGTH AS 'Data Length',
       MAX_DATA_LENGTH AS 'Max Data Length',
       INDEX_LENGTH AS 'Index Length',
       DATA_FREE AS 'Data Free',
       AUTO_INCREMENT AS 'Auto Increment',
       CREATE_TIME AS 'Create Time',
       UPDATE_TIME AS 'Update Time',
       CHECK_TIME AS 'Check Time',
       TABLE_COLLATION AS 'Collation',
       CHECKSUM AS 'Checksum',
       CREATE_OPTIONS AS 'Create Options',
       TABLE_COMMENT AS 'Comment'
FROM   information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
AND    TABLE_NAME = 'first_table';
