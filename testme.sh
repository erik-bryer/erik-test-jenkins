#!/bin/bash
set -e
thisdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# wrapper script for the testme.py
# make this run on slurm....

reservation=""
if [[ $(id -un) == jenkins ]]; then
  if [[ $(scontrol show reservation -o jenkins | egrep -o 'State=\S+') == 'State=ACTIVE' ]]; then
	reservation="--reservation=jenkins"
  fi	
fi
set -x
srun --partition=project --qos=maxjobs --time=2 $reservation python $thisdir/testme.py
