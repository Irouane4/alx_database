-- 3-force_name.sql

-- Create table force_name if not exists
CREATE TABLE IF NOT EXISTS force_name (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL
);

-- Insert values into force_name table
INSERT INTO force_name (name) VALUES
    ('Holberton School'),
    ('Python is cool'),
    ('Holberton'),
    ('School'),
    ('C is fun');
