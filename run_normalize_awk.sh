#!/bin/bash -l
#PBS -l nodes=1:ppn=8,mem=80g,walltime=24:00:00
#PBS -m abe
#PBS -M haasx092@umn.edu
#PBS -e run_normalize_awk.err
#PBS -o run_normalize_awk.out
#PBS -N run_normalize_awk

cd /home/jkimball/haasx092/main_GBS/200305_samtools/filtered_vcf_files

prefix="200305_samtools"
normalize_prefix="200305_normalize"
mktemp | read tmp
cat ${prefix}_*_filtered.recode.vcf | awk -f ./normalize.awk > '$tmp' 2> $normalize_prefix.err
cp '$tmp' 200305_normalize_filtered.tsv
