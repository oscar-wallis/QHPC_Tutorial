# QHPC Tutorial
This repo contains materials used as a part of IEEE Quantum Week 2025 Tutorial 02 : Exploring the Challenges of Integrating HPC and Quantum Computing. It is a short showcase of using the QRMI to run a heterogenous workflow with 2 tasks being run on different cores via MPI and sending off a request to 2 quantum computers. This is essentially to also spoof the action of the SLURM SPANK Plugin.

To run this script you will need `Python`, `Rust`, `MPI`, the `QRMI` library (see below), an IBM Cloud accout with associated API Key and cloud instance CRN. Recommended installations:
  * `Python` : `https://www.anaconda.com/docs/getting-started/miniconda/install`
  * `Rust` : `https://www.rust-lang.org/tools/install`
  * `Open MPI` : `https://docs.open-mpi.org/en/v5.0.x/installing-open-mpi/quickstart.html`
  * `QRMI` : `https://github.com/qiskit-community/qrmi/blob/main/INSTALL.md` + you will need to `pip install mpi4py` as well.

The `run.sh` bash exports the `QRMI` variables, for more info check `https://github.com/qiskit-community/qrmi/blob/main/examples/qiskit_primitives/ibm/README.md`, then starts the `parallel_qpus.py` that loads these variables and runs the heterogenous workflow.
