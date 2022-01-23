# Depression-PRS

ros_scor.sh can be used to create polygenic risk scores at multiple p-value thresholds, given a base and target file. PRSice 2.0 is required to run the script. 

The Rscript command calls the PRSice.R file, thus requiring a proper path. The prsice command calls the PRSice_linux file. The --base file calls the base, or GWAS, file. The --snp, --A1, --bp, --chr, --A2, --stat, --pvalue commands are set to their respective column names in the base file. 

The --target command selects the genotype files from the sample used, where the --type file notes what type of file the genotype file is. 

--pheno command is to select a phenotype file. --bar-levels is used to selecte the p-value threshold for SNP selection. 

--score command is used to select a scoring method. 

Additional information can be found on the PRSice2.0 guide, referenced below. 



https://www.prsice.info/

Choi, S.W., and O'Reilly, P.F. (2019). PRSice-2: Polygenic Risk Score software for biobank-scale data. Gigascience 8(7). doi: 10.1093/gigascience/giz082.
