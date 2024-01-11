-- Print the full description of the table first_table

-- Use the information_schema to get the table definition
SELECT
    CONCAT(
        'CREATE TABLE `first_table` (',
        GROUP_CONCAT(
            COLUMN_NAME,
            ' ',
            COLUMN_TYPE,
            IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
            IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
            IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
            ','
            ORDER BY ORDINAL_POSITION
        ),
        ' PRIMARY KEY (`id`)',
        ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;'
    ) AS create_table
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_test_db_5' AND TABLE_NAME = 'first_table';
