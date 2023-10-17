#!/bin/bash
#SBATCH -A p30791
#SBATCH -p short
#SBATCH -t 00:10:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=1G
#SBATCH --job-name=nftestbbcar
#SBATCH --mail-user=sayarenedennis@northwestern.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --output=/projects/b1131/saya/nf_sandbox/out/bbcar_processing.out

module purge all
module load nextflow/22.04.4

cd ~/nf_sandbox/code/

nextflow run -c ./nextflow.config -cache false -work-dir "/projects/b1131/saya/nf_sandbox/nf_workdir" bbcar_processing.nf
