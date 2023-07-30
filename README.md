# HAZESOFT-T3
This has called backup.sh that ask you to enter the the path of a directory to back up. The script create a compressed tar archive of the current directory, save it with a timestamped name in a specified backup directory, and print a message indicating whether the backup was successful or not.

## HOw it works
Copy the backup.sh file on your pwd (directory you want to backup) and run it using command :- sh backup.sh

### Some breakdown what is inside
 i. filename=back-$(basename "$(pwd)")-${today}.tar.gz  : This gives the name of backup tar file. For eg: if pwd is abc then you will have name as back-abc-(today's date).tar.gz.

-------------------------------------------------------------------------------------------------------

# redis.sh

This script is designed to automatically check and update the configuration directory path of a Redis container named "redis-redis-1". It ensures that the Redis configuration directory is set to "/data".

## Prerequisites
- Docker must be installed on the host machine.
- The Redis container with the name "redis-redis-1" should already be running.

## How it works
- The script runs a Redis CLI command inside the Docker container to fetch the current configuration directory path.

- It parses the output to extract the configuration directory path using awk.

- The expected configuration directory path is set to "/data".

- The script then compares the current configuration directory path with the expected path.

- If they do not match, the script updates the Redis configuration directory path to "/data".

- If the current and expected paths match, the script will not perform any changes.

## Usage
- Save the script to a file, e.g., redis.sh.

- Open a terminal and navigate to the directory where the script is located.

- Make the script executable:
 - $chmod +x redis.sh
 - $ ./redis.sh