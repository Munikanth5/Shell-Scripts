cd /apps/logs/backup.txt 
 find . -type f -mtime +7-exec mv '{}' /apps/logs/Log_Backup \;
cd /apps/logs/Log_Backup 
find /apps/logs/Log_Backup -type f -nme '*log*' > include-file
tar -cvf $(hosatname)_$(date +%Y%m%d%H%M%S).tar.gz -T include-file

find -type f -name '*log*' -exec rm -rf {} \;
find -type f -mtime +3 -name '*.tar.gz' -exec rm '{}' \;
exit

