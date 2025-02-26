#!/bin/bash


# check if the user running the script is root, if not exit with an error message 1
if [[ "${UID}" -ne 0 ]]
then
  echo 'Please run with sudo or as root.'
  exit 1
fi

read -p 'Enter the username to create: ' USER_NAME

read -p 'Enter the name of the person who this account is for: ' COMMENT

read -p 'Enter the password to use for the account: ' PASSWORD

# Create the user
useradd -c "${COMMENT}" -m ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
  echo 'The account could not be created.'
  exit 1
fi

echo ${PASSWORD} | passwd --stdin ${USER_NAME}
if [[ "${?}" -ne 0 ]]
then
  echo 'The password could not be set.'
  exit 1
fi

# expire the password
passwd -e ${USER_NAME}

echo "Username: ${USER_NAME}"
echo "Password: ${PASSWORD}"
echo "Host: ${HOSTNAME}"