#!/bin/bash
#SBATCH -e slurm.err

module load PRSice/2.3.3

Rscript /opt/apps/rhel8/PRSice-2.3.3/PRSice.R --prsice /opt/apps/rhel8/PRSice-2.3.3/PRSice_linux --base /hpc/group/adrc/su44/NACC/MDD2018_ex23andMe3.txt --snp SNP --A1 A1 --bp BP --chr CHR --A2 A2 --stat beta --pvalue P \
--target chr# --type bgen --bar-levels 0.5, 0.4, 0.3, 0.2, 0.1, 0.05, 0.01, 0.005, 0.001, 0.0001, 1e-05, 1e-06, 1e-07, 1e-08 \
--pheno /hpc/group/adrc/su44/ROSMAP_genotypes/data.txt --ignore-fid --keep-ambig --pheno-col PHENOTYPE --binary-target F --perm 10000 \
--print-snp --thread 1 --clump-p 1.000000 --clump-r2 0.100000 --score std --no-regress --out ROS_PRS_e8 \
--all-score --fastscore \
