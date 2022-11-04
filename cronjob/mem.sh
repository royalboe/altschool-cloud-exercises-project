#!/usr/bin/bash

# Make directory and cd into the directory
mkdir -p /home/vagrant/logs
cd /home/vagrant/logs

# Variable for the filename
FILE=log_file.log

# Add the date to the file
date >> $FILE
echo "--------------------------------------------------------------------------------" >> $FILE
free >> $FILE
echo "--------------------------------------------------------------------------------" >> $FILE

# The recipient email address
TO="auomidejohnson@gmail.com"

# Variable to store the current time
ALERT_TIME=$(date | awk '{print $4}')

# Variable to store a formatted date
SENDTIME=$(date +%H%M)

if [[ $SENDTIME == 0000 ]]
then
	echo "Hello Ayomide, attached to this email is your your RAM usage for the previous day" | sudo mail -s "RAM Usage" -A $FILE $TO
	rm $FILE
fi
