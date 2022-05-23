#!/bin/bash -x

#refacture the function code to write a function to get work hours using Arryas by chainginf the daily wage


# constants for the programe
isPartTime=1;
isFulltime=2;
maxHrsInMonth=100;
empRatePerHr=20;
numWorkingDays=20;

# variables
totalEmpHr=0;
totalworkingDays=0;

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
       dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary=$(($totalEmpHrs*$empRatePerHr));
echo ${dailyWage[@]}


