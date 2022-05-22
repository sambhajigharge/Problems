 #! /bin/bash -x


# use random to check emp is present or absent

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];

then

       echo "Employee is Present";

else

       echo "Employee is Absent"
fi
