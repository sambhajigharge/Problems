 #! /bin/bash -x


#Unit conversion:1 ft = 12 in then 42 in = ?ft


echo "enter a number to be converted"
read number

feet=$(($number*12))

inches=$(($number%12))

echo "feet conversion to inches = $feet"
echo "inches conversion to feet = $inches"





