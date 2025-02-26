#!/bin/bash

#get the UID
echo "Your UID is ${UID}"

#get the username
USERNAME=$(whoami)
echo "Your username is ${USERNAME}"

#test if the username matches username to test for
USERNAME_TO_TEST_FOR="vagrant"
if [[ "${USERNAME}" = "${USERNAME_TO_TEST_FOR}" ]]
then
  echo "Your username matches ${USERNAME_TO_TEST_FOR}"
  exit 1
fi

exit 0
