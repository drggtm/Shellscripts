# HAZESOFT-T3
This has called backup.sh that ask you to enter the the path of a directory to back up. The script create a compressed tar archive of the current directory, save it with a timestamped name in a specified backup directory, and print a message indicating whether the backup was successful or not.

## HOw it works
Copy the backup.sh file on your pwd (directory you want to backup) and run it using command :- sh backup.sh

### Some breakdown what is inside
 i. filename=back-$(basename "$(pwd)")-${today}.tar.gz  : This gives the name of backup tar file. For eg: if pwd is abc then you will have name as back-abc-(today's date).tar.gz.

