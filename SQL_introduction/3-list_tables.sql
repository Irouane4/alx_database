-- Delete and create database hbtn_test_db_0 and create 3 tables
DROP DATABASE IF EXISTS hbtn_test_db_0;
CREATE DATABASE IF NOT EXISTS hbtn_test_db_0;
USE hbtn_test_db_0;

-- Create 3 tables
CREATE TABLE IF NOT EXISTS holbteron_0 (
    id INT
);

CREATE TABLE IF NOT EXISTS holbteron_1 (
    name VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS holbteron_2 (
    id INT,
    name VARCHAR(256)
);

-- Show all tables in the specified database (should be empty)
SHOW TABLES;
