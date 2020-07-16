# README for linkage_disequilibrium
These scripts were used for working on the Linkage Disequilibrium project.

## filter_snps_and_make_wide_format.R
R script to parse the TSV file that is the result of normalize.awk and create a wide format CSV file. Called by the shell script _run_snp_filtering_R.sh_.

## filter_with_vcftools.sh
Shell script to filter VCF files using VCFtools

## run_normalize_awk.sh
Shell script to run normalize.awk

## run_snp_filtering_R.sh
Shell script to run the R script _filter_snps_and_make_wide_format.R_
