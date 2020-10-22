#!/bin/bash -x

heads=1
tails=0

flip=$((RANDOM%2))

if [ $flip -eq $heads ];
then
	echo "!! Congrats you win !!"
else
	echo "you loose better luck next time :("
fi
