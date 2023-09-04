#!/bin/bash

# Set variables for database credentials and backup destination
DB_USER="xxxx"
DB_PASSWORD="xxxx"
BACKUP_DIR="/local/db_backups"


#############################
###### 1. Fragematning ######
#############################
DB_NAME="fragematning"

# Determine the container ID for the MySQL database
CONTAINER_NAME="fragematning-db"
CONTAINER_ID=$(docker ps -f "name=fragematning-db" -q)

# Create a timestamped directory for the backup
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_PATH="$BACKUP_DIR/$TIMESTAMP"
#mkdir -p "$BACKUP_PATH"

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###############################
###### 2. Smartsigntools ######
###############################
DB_NAME="smartsigntools"

# Determine the container ID for the MySQL database
CONTAINER_NAME="smartsigntools-db"
CONTAINER_ID=$(docker ps -f "name=smartsigntools-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

############################
###### 3. Dialogtools ######
############################
DB_NAME="dialogtools"

# Determine the container ID for the MySQL database
CONTAINER_NAME="dialogtools-db"
CONTAINER_ID=$(docker ps -f "name=dialogtools-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 4. Grouprooms ######
###########################
DB_NAME="bookingsystem"

# Determine the container ID for the MySQL database
CONTAINER_NAME="grouprooms-db"
CONTAINER_ID=$(docker ps -f "name=grouprooms-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###############################
###### 5. Readingstudios ######
###############################
DB_NAME="bookingsystem"

# Determine the container ID for the MySQL database
CONTAINER_NAME="readingstudios-db"
CONTAINER_ID=$(docker ps -f "name=readingstudios-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

############################
###### 6. Handledning ######
############################
DB_NAME="bookingsystem"

# Determine the container ID for the MySQL database
CONTAINER_NAME="handledning-db"
CONTAINER_ID=$(docker ps -f "name=handledning-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 7. Talbok ##########
###########################
DB_NAME="bookingsystem"

# Determine the container ID for the MySQL database
CONTAINER_NAME="talbok-db"
CONTAINER_ID=$(docker ps -f "name=talbok-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 8. CAS #############
###########################
DB_NAME="bookingsystem"

# Determine the container ID for the MySQL database
CONTAINER_NAME="cas-db"
CONTAINER_ID=$(docker ps -f "name=cas-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

#############################
###### 9. Openinghours ######
#############################
DB_NAME="bookingsystem"

# Determine the container ID for the MySQL database
CONTAINER_NAME="openinghours-db"
CONTAINER_ID=$(docker ps -f "name=openinghours-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 10. Tandem #########
###########################
DB_NAME="tandemlearn"

# Determine the container ID for the MySQL database
CONTAINER_NAME="tandem-db"
CONTAINER_ID=$(docker ps -f "name=tandem-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 11. Almatools ######
###########################
DB_NAME="almatools"

# Determine the container ID for the MySQL database
CONTAINER_NAME="almatools-db"
CONTAINER_ID=$(docker ps -f "name=almatools-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 12. Formtools ######
###########################
DB_NAME="formtools"

# Determine the container ID for the MySQL database
CONTAINER_NAME="formtools-db"
CONTAINER_ID=$(docker ps -f "name=formtools-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$CONTAINER_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$CONTAINER_NAME.sql"

###########################
###### 13. PI ISBN ########
###########################
DB_NAME="hant_isbn"

# Determine the container ID for the MySQL database
CONTAINER_NAME="pi-db"
CONTAINER_ID=$(docker ps -f "name=pi-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$DB_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$DB_NAME.sql"

###########################
###### 14. PI DIVA ########
###########################
DB_NAME="hant_diva"

# Determine the container ID for the MySQL database
CONTAINER_NAME="pi-db"
CONTAINER_ID=$(docker ps -f "name=pi-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$DB_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$DB_NAME.sql"

###########################
###### 15. PI BIBMET ######
###########################
DB_NAME="bibmet"

# Determine the container ID for the MySQL database
CONTAINER_NAME="pi-db"
CONTAINER_ID=$(docker ps -f "name=pi-db" -q)

# Use mysqldump to create a backup of the database inside the container
docker exec "$CONTAINER_ID" mysqldump -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/$DB_NAME.sql"

# Compress the backup file
gzip -f "$BACKUP_DIR/$DB_NAME.sql"

###### Avslutning ######

# Delete backups older than 7 days
#find "$BACKUP_DIR" -mindepth 1 -maxdepth 1 -type d -mtime +7 -exec rm -rf {} \;
