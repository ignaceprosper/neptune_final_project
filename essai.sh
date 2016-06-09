#! /bin/bash

cd ~/repos/neptune_final_project

# manual BLAST against an individual proteome
# requires following inputs :
#$1 = sequence query
#$2 = reference proteome
#$3 = e-value
#$4 = output format option -outfmt

	echo $1
	echo $2
	echo $3
	echo $4
	echo blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS${2}_outfmt$4.out -evalue 1e-$3 -outfmt $4
	blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS${2}_outfmt$4.out -evalue 1e-$3 -outfmt $4
