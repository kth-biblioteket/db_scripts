#!/bin/bash

# Set variables for database credentials and backup destination
DB_USER="xxxx"
DB_PASSWORD="xxxx"
DB_NAME="bookingsystem"
BACKUP_DIR="/local/db_backups"

# Determine the container ID for the MySQL database
CONTAINER_NAME="talbok-db"
CONTAINER_ID=$(docker ps -f "name=talbok-db" -q)

# Confirmation prompt
read -p "Are you sure you want to import the database (yes/no)? " confirm
if [[ "$confirm" =~ ^[Yy][Ee][Ss]|[Yy]$ ]]; then
        # Use mysql to import the database inside the container
        zcat "$BACKUP_DIR"/"$DB_NAME".sql.gz | docker exec -i "$CONTAINER_ID" mysql -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME"
else
    echo "Database import canceled."
fi
