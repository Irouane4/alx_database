

-- Define the database name as an argument
DATABASE_NAME="$1"

-- Connect to the MySQL server
mysql -hlocalhost -uroot -p

-- Switch to the specified database
USE $DATABASE_NAME

-- List all tables in the database
SHOW TABLES;

-- Exit the MySQL server
exit 0