# KTHB Scripts för databaser
Backup/restore

## Funktioner
Shell-script som körs via systemd service

sudo nano /etc/systemd/system/kthb-backup.service
sudo nano /etc/systemd/system/kthb-backup.timer

sudo systemctl daemon-reload 

sudo systemctl enable --now kthb-backup.timer 

sudo systemctl status kthb-backup.timer 

sudo journalctl -u kthb-backup.service 

###

zcat: cat to view compressed file 

zgrep: grep to search inside the compressed file 

zless for less, zmore for more: to view the file in pages

zdiff: diff to see the difference between two compressed files 

####
Skapa  

sudo mkdir /local/db_backups 

Skapa  

sudo mkdir /local/scripts 

Skapa  

sudo nano /local/scripts/db_backups.sh  (exekverbar) 

sudo chmod +x db_backups.sh 