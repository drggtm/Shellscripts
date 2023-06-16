#!/bin/bash

today=$(date +%Y-%m-%d)
Backup_dir=""
Dest=""
filename=back-$(basename "$(pwd)")-${today}.tar.gz

echo "Enter the backup directory:"
read Backup_dir

if [ -z "${Backup_dir}" ]; then
  echo "Error: Backup directory is empty! and failed operation"
  exit 1
fi

if [ -f "${Backup_dir}/${filename}" ]; then
  echo "Error: File ${filename} already exists in the backup directory!"
else
  tar -czf "${Backup_dir}/${filename}" .
  echo "Backup was successful at ${Backup_dir}/${filename}"
fi

