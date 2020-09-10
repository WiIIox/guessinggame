#!/usr/bin/env bash

count=$(ls -1 | wc -l)

function correct_guess {
    if [[ $1 -lt $2 ]]
    then
	echo "Your answer is too low."
	echo "Try one more time."
    elif [[ $1 -gt $2 ]]
    then
	echo "Your answer is too high."
	echo "Try one more time."
    else
	echo "Well done! Your answer is correct!"
    fi
}

while [[ $count -ne $guess ]]
do
    echo "Guess how many files are in the current directory? "
    read guess
    echo $(correct_guess $guess $count)
done
