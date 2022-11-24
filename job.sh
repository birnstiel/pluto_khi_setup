#!/bin/bash
#
#SBATCH --job-name=PlutoKHI
#SBATCH --comment="KHI setup für Pluto"
#SBATCH --mem=2048
#SBATCH --time=03:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<your@email>
#SBATCH --chdir=/scratch/t/<username>/pluto_khi_setup/
#SBATCH --output=/scratch/t/<username>/pluto_khi_setup/slurm.%j.%N.out
#SBATCH --ntasks=32
#SBATCH --nodes=1
#SBATCH --partition=cip
##SBATCH --ntaks-per-core=1

echo "Starting job"
echo -n "I'm on Host "
hostname
echo -n "It's now "
date 

mpiexec -n $SLURM_NTASKS ./pluto

echo "Job completed"
echo -n "It's now "
date
