#! /bin/bash

# manual BLAST against an individual proteome
# requires following inputs :
#$1 = sequence query
#$2 = reference proteome
#$3 = e-value


cd ~/repos/neptune_final_project

#echo blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS$2.out -evalue 1e-30
#echo $1
#echo $2

#for j in homoHCN.short.fa nematoHCN.short.fa; # to blast the two query sequences successively against each proteome
#do
	echo $1
	echo $2
	echo $3
	echo blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS$2.out -evalue 1e-$3
	blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS$2.out -evalue 1e-$3

	#echo query=`basename -s HCN.short.fa $j`
	#query=`basename -s HCN.short.fa $j`
	#echo blastp -db $ref -query ../$j -out ../out/${query}VS${ref}.out -evalue 1e-30
	#blastp -db $ref -query ../$j -out ../out/${query}VS${ref}.out -evalue 1e-30
#done

cd ..




#read -r -p 'query >>> ' quer
#echo $quer
#read -r -p 'reference >>> ' ref
#echo $ref
#read -r -p 'e-value >>> ' e
#echo '1e-'$e
#blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS$2.out -evalue 1e-30
