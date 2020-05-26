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
		;;
	$isparttime)
		emphrs=4
		;;
	*)
		emphrs=0
		;;
esac
salaryperday=$(($emphrs*empwageperhr))
echo $salaryperday		
     
