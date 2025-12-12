#!/bin/bash
# submit_array.sh

#SBATCH -J pps-dft
#SBATCH -o log_slurm.o%j
#SBATCH -N 1 
#SBATCH -n 48
#SBATCH -p bsudfq
#SBATCH -t 3-12:00:00

#!/bin/bash

functionals=("ub3lyp" "upbepbe" "uwb97xd")
bases=("6-31G" "3-21G" "sto-3g" "6-311G" "6-31G*" "3-21G*")

for func in "${functionals[@]}"; do
  for basis in "${bases[@]}"; do
    job="${func}-${basis}.gjf"

    sed \
      -e "s/{{METHOD}}/${func}/g" \
      -e "s/{{BASIS}}/${basis}/g" \
      template.gjf > "$job"

    g16 <"$job"> "scrf-$job".out
  done
done
