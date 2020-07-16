#!/bin/bash -l
#PBS -l nodes=1:ppn=8,mem=60g,walltime=24:00:00
#PBS -m abe
#PBS -M haasx092@umn.edu
#PBS -e filter_snps_R.err
#PBS -o filter_snps_R.out
#PBS -N filter_snps_R

cd /home/jkimball/haasx092/main_GBS/200305_samtools/filtered_vcf_files
module load R/3.6.0
Rscript filter_snps_and_make_wide_format.R 200305_normalize_filtered.tsv 200717_data_from_200305_filtered_and_wide.csv
