#!/bin/bash


echo 'Hello'

#variables
WORD='script'

#displaying variable values
echo "$WORD"
#displaying string literal
echo '$WORD'

echo "This is a shell ${WORD}"

#append text
echo "${WORD}ing is fun!"

echo "{WORD}ing is fun!"


ENDING='ed'

echo "This is ${WORD}${ENDING}."

ENDING='ing'

echo "This is ${WORD}${ENDING}"

ENDING='S'

echo "I am going to write many ${WORD}${ENDING}"
