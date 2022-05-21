#! /bin/bash -x 


#Add two random dice numbers and print the result


Dice1=$(( (RANDOM % 6) + 1 ))

Dice2=$(( (RANDOM % 6) + 1 ))

Sum=$((dice1+dice2))

echo "Result of two random dice num is: $sum"




