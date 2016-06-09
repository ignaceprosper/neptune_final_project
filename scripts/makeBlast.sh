#! /bin/bash

cd ~/repos/neptune_final_project


blastp -db refProteomes/mus -query Evx_Oikopleura.fasta -out results.out


for i in *.all.fasta;
do
	makeblastdb -in $i -out `basename -s .all.fasta $i` -dbtype prot;
done
