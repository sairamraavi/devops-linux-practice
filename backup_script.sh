#!/bin/bash

DATE=$(date +%F)

echo "Starting backup..."

tar -czf /backups/apache_backup_$DATE.tar.gz /etc/apache2 /var/www/html 2>/dev/null
tar -czf /backups/nginx_backup_$DATE.tar.gz /etc/nginx /usr/share/nginx/html 2>/dev/null

echo "Backup completed on $DATE"

echo "Backup completed on $DATE" >> /backups/backup.log

