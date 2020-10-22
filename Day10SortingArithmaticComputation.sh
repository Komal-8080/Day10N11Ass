#!/bin/bash -x

echo "Enter Value of a"
read a

echo "Enter Value of b"
read b

echo "Enter Value of c"
read c

echo " "

declare -A computeArray=()


	Computation1=$((a+b*c))
        echo "Value of a+b*c is $Computation1"
	computeArray+=([a+b*c]=$Computation1)

	Computation2=$((a*b+c))
        echo "Value of a*b+c is $Computation2"
	computeArray+=([a*b+c]=$Computation2)


	Computation3=$((c+a/b))
	echo "Value of c+a/b is $Computation3"
	computeArray+=([c+a/b]=$Computation3)


	Computation4=$((a%b+c))
	echo "Value of a%b+c is $Computation4"
	computeArray+=([a%b+c]=$Computation4)

	echo " "
	echo "Values in Dictionary are : "
	for key in "${!computeArray[@]}"
	do
        echo "$key => ${computeArray[$key]} "
	done

	arrVar=(${computeArray[@]})

	echo " "
	echo "Values in Array are : "
	echo "${arrVar[@]}"

	sortedAscending=`echo ${arrVar[*]}|tr " " "\n"|sort -n`
	echo " "
	echo "Values in Asencending Order"
	echo "$sortedAscending"
