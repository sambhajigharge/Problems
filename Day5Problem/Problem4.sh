#! /bin/bash -x 


#Programe that reads 5 random 2 digit values,their sum and average


echo 
      Rnum1="$(( ( RANDOM%90 ) + 10 ))"
      Rnum2="$(( ( RANDOM%90 ) + 10 ))"
      Rnum3="$(( ( RANDOM%90 ) + 10 ))"
      Rnum4="$(( ( RANDOM%90 ) + 10 ))"
      Rnum5="$(( ( RANDOM%90 ) + 10 ))"

sum=$((Rnum1+Rnum2+Rnum3+Rnum4+Rnum5))

echo "sum of 5 random 2 digit num is : $sum"

avg=$(($sum%$N))

echo "avg of 5 random 2 digit nim is : $avg"

