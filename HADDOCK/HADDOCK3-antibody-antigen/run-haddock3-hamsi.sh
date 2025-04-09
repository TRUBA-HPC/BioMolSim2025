#!/bin/bash
#SBATCH --nodes=1
#SBATCH --tasks-per-node=54
#SBATCH -C weka
#SBATCH -p hamsi
#SBATCH --time 00:30:00

source ~egitim/HADDOCK/haddock3/.venv/bin/activate
haddock3 workflows/docking-antibody-antigen.cfg
#haddock3 workflows/docking-antibody-antigen-abb.cfg
#haddock3 workflows/docking-antibody-antigen-af2.cfg
#haddock3 workflows/docking-antibody-antigen-ens.cfg
#haddock3 workflows/docking-antibody-antigen-abinitio.cfg
#haddock3 workflows/scoring-antibody-antigen.cfg
#haddock3 workflows/interaction-energetics.cfg
