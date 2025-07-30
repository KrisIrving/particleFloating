#!/bin/bash

#===================================================================#
# Allrun script for cfdemSolverMultiphase
#===================================================================#

#- define variables
postProcessing=true #true
casePath="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"

if [ "$postProcessing" = true ]; then
    bash $casePath/postrun.sh
fi

bash $casePath/parCFDDEMrun.sh

if [ "$postProcessing" = true ]; then
    bash $casePath/postrun.sh
fi
