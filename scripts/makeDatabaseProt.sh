#! /bin/bash

cd ~/Desktop/sf_UbuntuShare
cp *.all.fasta.gz ~/repos/neptune_final_project/refProteomes/
cd ~/repos/neptune_final_project/refProteomes/
gunzip *.all.fasta.gz

for i in *.all.fasta;
do
	makeblastdb -in $i -out `basename -s .all.fasta $i` -dbtype prot;
done
