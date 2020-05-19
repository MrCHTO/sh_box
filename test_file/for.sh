test=(1 3 5 7 9 2 4 6 8 0)
for((i=0;i<10;i++))
do
	for((j=0;j<9-i;j++))
	do
		if [ ${test[$j]} -lt ${test[$(($j+1))]}  ]
		then 
			((temp=test[j]))
			((test[j]=test[j+1]))
			((test[j+1]=temp))
		fi
	done
done
echo "${test[*]}"
