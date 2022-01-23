#!/bin/bash
#SBATCH -e slurm.err
#SBATCH -p adrc
#SBATCH --mem=8G
cd /hpc/group/adrc/su44/ROSMAP_genotypes/try2
module load PRSice/2.3.3

Rscript /opt/apps/rhel8/PRSice-2.3.3/PRSice.R --prsice /opt/apps/rhel8/PRSice-2.3.3/PRSice_linux --base /hpc/group/adrc/su44/NACC/MDD2018_ex23andMe3.txt --snp SNP --A1 A1 --bp BP --chr CHR --A2 A2 --stat beta --pvalue P \
--target chr# --type bgen --bar-levels 1e-08 \
--pheno /hpc/group/adrc/su44/ROSMAP_genotypes/data.txt --ignore-fid --keep-ambig --pheno-col PHENOTYPE --binary-target F --perm 10000 \
--print-snp --thread 1 --clump-p 1.000000 --clump-r2 0.100000 --score std --no-regress --out ROS_PRS_e8 \
--all-score --fastscore \