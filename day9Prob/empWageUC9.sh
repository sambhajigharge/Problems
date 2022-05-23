#!/bin/bash -x

#stored teh day and daily wage along with thw total wage by declaring teh daily wage by using dictionary


# constants for the programe
isPartTime=1;
isFulltime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

# variables
totalEmpHr=0;
totalworkingDays=0;

declare -A dailyWage;

function  getWorkingHrs() {
        local $empCheck=$1
	case $empCheck in
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
	echo $empHrs
}

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]

do
      ((totalWorkingDays++))
       empCheck=$((RANDOM%3));
       empHrs="$( getWorkingHrs $empCheck )"
       totalEmpHrs=$(($totalEmpHrs+$empHrs))
       dailyWage["$totalWorkingDays"]=$(($empHrs*$empRatePerHr))
done

totalSalary=$(($totalEmpHrs*$empRatePerHr));
echo ${dailyWage[@]}
echo ${!dailyWage[@]}

