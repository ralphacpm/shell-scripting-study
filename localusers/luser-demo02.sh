#!/bin/bash

#Display the UID and username of the user executing this script.
#Display if the user is root or not.

#Display the UID
echo "Your UID is ${UID}"

#display the username
USERNAME=$(id -un)

#old way to issue a command and store it in a variable
USERNAME=`id -un`

echo "Your username is $(whoami)"
echo "Your username is ${USERNAME}"

#Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root.'
else
  echo 'You are not root.'
fi