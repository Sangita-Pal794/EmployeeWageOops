#!/bin/bash -x
isPresent=1
isparttime=1
isfulltime=0
empwageperhr=20
workingdays=20
absent=0
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present"
else
	echo "Employee is not Present"
fi

if [ $randomCheck -eq 0 ]
then
	empcheck=2
else
	empcheck=$((RANDOM%2))
fi

case $empcheck in
	$isfulltime)	
	emphrs=8;
	salaryperday=$(($emphrs*empwageperhr))
	;;
	$isparttime)
	emphrs=4
	salaryperday=$(($emphrs*empwageperhr))
	;;
	*)
	emphrs=0
	;;
esac
echo $salaryperday
hrsperday=0
hrs=0
totalsalary=0		
     
for(( i=1; i<=20; i++ ))
do
	randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
	then
        echo "Employee is Present"
else
        echo "Employee is not Present"
fi
hrsperday=$(($isPresent*$emphrs))
hours=$(($hours+$hrsperday))
done
echo "totalhours:$hours"

#if [ $hours -ge 100 ]
#then
#	b=$(($hours*empwageperhour))
#	echo $b
#else
#	echo "less than 100 hrs"
#fi

