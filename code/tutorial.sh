#!/bin/bash
#SBATCH -A b1042
#SBATCH -p genomics
#SBATCH -t 00:10:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem=1G
#SBATCH --job-name=nf_tutorial
#SBATCH --mail-user=sayarenedennis@northwestern.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --output=/projects/b1131/saya/nf_sandbox/out/nf_tutorial.out

module purge all
module load nextflow/22.04.4

cd ~/nf_sandbox/code/

nextflow run -work-dir /projects/b1131/saya/nf_sandbox/nf_workdir tutorial.nf
