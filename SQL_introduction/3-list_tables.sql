
-- Define the database name as an argument
DATABASE_NAME="$1"

-- Connect to the MySQL server and switch to the specified database
mysql -hlocalhost -uroot -p $DATABASE_NAME << EOF

-- List all tables in the database
SHOW TABLES;

EOF
