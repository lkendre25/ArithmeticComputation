#!/bin/bash
echo "Arithmatic Operations Here!! "

read -p "Enter the first Number " a
read -p "Enter the second Number" b
read -p "Enter the Third Number" c

	exp4=$[(a%b)+c]
	exp1=$[a+(b*c)]
	exp2=$[(a*b)+c]
	exp3=$[c+(a/b)]
	ans=($exp4 $exp1 $exp2 $exp3)

	#echo "Output of the above expression is : $exp"
	echo "First equestion : ${ans[0]} "
	echo "Second equation : ${ans[1]} "
	echo "Third Equation  : ${ans[2]} "
	echo " Fourth Equaton : ${ans[3]} "


	for i in ${!ans[@]}
	do
		for j in ${!ans[@]}
		do
 			if [ ${ans[$j]} -gt ${ans[j+1]} ]
			then
					temp=${ans[j]}
					${ans[j]} = ${ans[j+1]}
					${ans[j+1]} = $temp

			fi
			#echo "j : $j "
			#echo "i : $i "
		done
#		echo ${ans[@]}
	done
#echo ${ans[temp]}
echo ${ans[@]}
