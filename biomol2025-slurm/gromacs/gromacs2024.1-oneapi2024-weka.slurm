#!/bin/bash
#SBATCH -p debug
#SBATCH -A egitim
#SBATCH -J test
#SBATCH -N 1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH -C weka
#SBATCH --reservation=bioexcel
#SBATCH --time=03:00:00

echo "SLURM_NODELIST $SLURM_NODELIST"
echo "NUMBER OF CORES $SLURM_NTASKS"

echo "number of CPUs=  $SLURM_NPROCS"

module purge

module load apps/gromacs/2024.1-oneapi2024

#BURAYA is calistirma komutunuzu yaziniz

#mpirun gmx_mpi #Please add your gromacs commands

mpirun gmx_mpi mdrun -v -s benchmark.tpr

exit

