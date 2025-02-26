#!/bin/bash

read -p "Enter the username to create: " USER_NAME

read -p "Enter the name of the person who this account is for: " COMMENT

read -p "Enter the password to use for the account: " PASSWORD


#Create the user 
useradd -c "${COMMENT}" -m ${USER_NAME}

#set the password for the user
passwd ${USER_NAME} --stdin ${PASSWORD}

#expire the password to force user to change on login
passwd -e ${USER_NAME}