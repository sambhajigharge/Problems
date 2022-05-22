#! /bin/bash -x 


#Programe that reads 5 random 2 digit values,their sum and average


for i in {1..5}
do
echo "$(( ( RANDOM%90 ) + 10 ))"
done




