#!/bin/bash -x

echo "Enter Value of a"
read a

echo "Enter Value of b"
read b

echo "Enter Value of c"
read c

	Computation1=$((a+b*c))
        echo "Value of a+b*c is $Computation1"

	Computation2=$((a*b+c))
        echo "Value of a*b+c is $Computation2"

	Computation3=$((c+a/b))
	echo "Value of c+a/b is $Computation3"

