#!/bin/bash -x

#calculate employee wage for month 20 working day for month using for loop


isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=$numWorkingDays; day++ ))
do
        empCheck=$((RANDOM%3));

                case   $empcheck in
                          $isFullTime)
                                 empHrs=8
                                 ;;

                           $isPartTime)
                                 empHrs=4
                                 ;;
                           *)
                            empHrs=0
                                 ;;
                 esac

                 salary=$(($empHrs*$empRatePerHr));
                 totalSalary=$(($totalSalary*$salary));
done
