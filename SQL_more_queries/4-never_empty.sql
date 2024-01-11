-- Create the table id_not_null in the MySQL server

CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1 PRIMARY KEY,
    name VARCHAR(256)
);
