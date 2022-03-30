#!/bin/bash

echo "[Lets play a game!]"

function ask {
echo "Guess how many files are hidden in this directory"
read guess
 files=$(ls -1 | wc -1)
}
ask
while [[ $guess -ne $files ]]
do
if [[ $guess -lt $files ]] 
then
echo "TOO LOW"
else
echo "TOO HIGH"
fi
ask
done
echo "Congratulations, You win!"

