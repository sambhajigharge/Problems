#! /bin/bash -x 


#Use random function to get dice number between 1 to 6

echo $(( ( RANDOM % 6 ) + 1 ))

