#!/bin/bash -x

#constant
EMP_RATE_PER_HR=20
IS_FULL_TIME=1
IS_PART_TIME=2
NUM_OF_WORKING_DAYS=5
MAX_HRS_IN_MONTH=20


#variable
totalEmpHrs=0
totalworkingDays=0

function getworkHrs() {
	local empCheck=$1
	case $empCheck in
		$IS_FULL_TIME)
			empHrs=8
			;;
		$IS_PART_TIME)
			empHrs=4
			;;
			*)
				empHrs=0
			;;
esac
echo $empHrs
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalworkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	((totalworkingDays++))
	empCheck=$(( RANDOM%3 ))
	empHrs="$( getworkHrs $empChecK )"
	totalEmpHrs=$(($totalEmpHrs + $empHrs))
done
totalsalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))


