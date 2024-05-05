#!/bin/bash

# Prompt the user for the database name to delete
read -p "Enter the name of the database you want to delete: " db_name

# Access the MariaDB server
mysql -u root -p <<EOF
# Delete the database
DROP DATABASE IF EXISTS $db_name;
EOF

# Inform the user about the deletion
echo "The database '$db_name' has been deleted, if it existed."
