#!/bin/bash
# Constants For The Program
Is_FULL_TIME=1;
Is_PART_TIME=2;
Max_Hrs_In_Month=4000;
Emp_Rate_Per_Hr=20;
NUM_WORKING_DAYS=20;
#Variables
totalWorkHours=0;
totalWorkingDays=0;
counter=0;
function getWorkingHours() (
        case $1 in
        $Is_FULL_TIME)
        empHrs=8
        ;;
        $Is_PART_TIME)
        empHrs=4
        ;;
        *)
        empHrs=0;
        ;;
esac
echo $empHrs
)
while [[ $totalWorkHours -lt $Max_Hrs_In_Month && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
         totalWorkingDays=$((totalWorkingDays + 1))
        workHours="$( getWorkingHours $((RANDOM%3)) )"
        totalWorkHours=$(($totalWorkHours+$workHours))
        DWage=$((workHours * Emp_Rate_Per_Hr))
	DailyWage[ ((counter++)) ]=$Dwage
done
	echo ${DailyWage[@]}
	totalSalary=$((totalWorkHours * Emp_Rate_Per_Hr))
	echo "The Salary is" $totalSalary
