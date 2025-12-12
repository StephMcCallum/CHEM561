In this final project, I applied DFT to my research to calculate the reorganization energy of poly-pheyl sulfide. I learned a new technique, Kinetic Monte Carlo, to use the reorganization energy from DFT calculation in Marcus Theory calculations for hopping rates, and find the charge mobility in a PPS melt.

This repository contains the code tempaltes to produce the DFT calculations, MD trajectories, and KMC calculations. The literature review and DFT data extracted from output files exist [here](https://docs.google.com/spreadsheets/d/1Dx0pnzVl_fxT_WU71A4CgpfJ02xHPCdOtX3P_fXE6JI/edit?usp=sharing).

DFT calculations were performed with Gaussian on Borah. The gaussian input template and slurm input file are in this repository: 
- template.gjf
- run_all.sh

Molecular dynamics simulations were performed using [flowerMD](github.com/cmelab/flowerMD), a HOOMD-blue wrapper. The notebook included here was adapted from an existing tutorial in flowerMD. The code was run in a terminal, and the purpose of this notebook is to outline the simulation steps, equillibration testing, and gsd file parsing for a final snapshot of the PPS melt morphology.
- pps-melt-flowerMD-.ipynb

Kinetic Monte Carlo simulations were performed using [morphct](github.com/cmelab/morphct). This library calculates the carrier mobility based on Marcus theory for hop rates for polymer chemistries. This notebook was adapted from an existing workflow example in morphct. I updated the smiles string for PPS chemistry and added a parameter input for reorganization energy.
- kmc-workflow-pps.ipynb
