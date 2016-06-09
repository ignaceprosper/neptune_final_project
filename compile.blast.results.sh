#! /bin/bash

cd ~/repos/neptune_final_project/out

# manual BLAST against an individual proteome
# requires following inputs :

for i in omo emato # to browse only among proteomes converted into a database
do
	for j in *$i* 
	do
		echo $i $j
		echo "cat $j >> results_${i}_1seq.txt"
		#cat $j >> results_${i}_1seq.txt

	done

	#grep -Po results_${i}_1seq.txt -e '^\womo\t\w+\|\w+\|\K(\w+)'

done
