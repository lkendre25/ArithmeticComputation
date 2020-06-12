#!/bin/bash


echo "Arithmatic Operations Here!! "

read -p "Enter the first Number " a
read -p "Enter the second Number" b
read -p "Enter the Third Number" c

	exp=$[(a%b)+c]

	echo "Output of the above expression is : $exp"

