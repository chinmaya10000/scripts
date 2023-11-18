#!/bin/bash

# Develop a Bash script that creates a new group and a new username. The group will be the users secondary group.

# The username and the group will be given as input by the user that runs the script.
read -p "Enter the group name to create: " group
read -p "Enter the username to create: " username

groupadd $group
useradd -s /bin/bash -m -G $group $username

# Display the last 2 lines from the files where the users and the groups are saved in Linux.
tail -n 2 /etc/group
echo
tail -n 2 /etc/passwd
echo

echo "The group $group and the username $username were created....!!"
