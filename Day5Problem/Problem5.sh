 #! /bin/bash -x


#Unit conversion:rectangular plot of 60 feet * 40 feet in meters

if
   length=60   
    width=40 
then
   area=$[$length*$width]

   echo "Area of the rectangle in ft is : $area"
fi
if
     area=$[$length*$width]
then
      meter=`echo "$area*0.3048"`
      
      echo "area of teh rectangular in meter is : $meter"
fi



