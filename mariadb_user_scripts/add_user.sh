#!/bin/bash

# Prompt the user for database details
read -p "Enter the desired database name: " db_name
read -p "Enter the desired username: " username
read -s -p "Enter the desired password: " password
echo

# Access the MariaDB server
mysql -u root -p <<EOF
# Create the database
CREATE DATABASE $db_name;

# Create the user and set the password
CREATE USER '$username'@'localhost' IDENTIFIED BY '$password';

# Grant privileges to the user on the database
GRANT ALL PRIVILEGES ON $db_name.* TO '$username'@'localhost';

# Flush privileges
FLUSH PRIVILEGES;

EOF

# Inform the user about the success
echo "Database, username, and password created successfully."
