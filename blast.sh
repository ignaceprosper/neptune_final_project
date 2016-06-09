#! /bin/bash

cd ~/repos/neptune_final_project

echo blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS$2.out
echo $1
echo $2

blastp -db refProteomes/$2 -query $1 -out out/`basename -s HCN.short.fa $1`VS$2.out -evalue 1e-30
