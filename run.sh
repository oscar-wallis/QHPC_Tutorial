#!/bin/bash

export SLURM_JOB_QPU_RESOURCES=ibm_kingston,ibm_fez
export SLURM_JOB_QPU_TYPES=qiskit-runtime-service,qiskit-runtime-service
export ibm_kingston_QRMI_IBM_QRS_ENDPOINT=https://quantum.cloud.ibm.com/api/v1
export ibm_kingston_QRMI_IBM_QRS_IAM_ENDPOINT=https://iam.cloud.ibm.com
export ibm_kingston_QRMI_IBM_QRS_IAM_APIKEY=
export ibm_kingston_QRMI_IBM_QRS_SERVICE_CRN=
export ibm_fez_QRMI_IBM_QRS_ENDPOINT=https://quantum.cloud.ibm.com/api/v1
export ibm_fez_QRMI_IBM_QRS_IAM_ENDPOINT=https://iam.cloud.ibm.com
export ibm_fez_QRMI_IBM_QRS_IAM_APIKEY=
export ibm_fez_QRMI_IBM_QRS_SERVICE_CRN=

# The sourcing may need to change depending you venv name and location
source ~/.cargo/env
source ~/miniconda3/etc/profile.d/conda.sh 
conda activate py312_qrmi

# python qrmi_methods.py
mpirun -np 2 python parallel_qpus.py
