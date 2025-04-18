# Antibody-antigen modelling tutorial using a local version of HADDOCK3

A tutorial describing the use of HADDOCK3 in the low-sampling scenario to model an antibody-antigen complex

The full tutorial can be found at: [https://www.bonvinlab.org/education/HADDOCK3/HADDOCK3-antibody-antigen](https://www.bonvinlab.org/education/HADDOCK3/HADDOCK3-antibody-antigen/)


## Useful links

* Other educational resources and HADDOCK (2.4 and 3.0) tutorials can be found at: [https://www.bonvinlab.org/education](https://www.bonvinlab.org/education/)

* For obtaining HADDOCK3 visit: [https://www.bonvinlab.org/software/#haddock](https://www.bonvinlab.org/software/#haddock)

* HADDOCK best practices guide: [https://www.bonvinlab.org/software/bpg/](https://www.bonvinlab.org/software/bpg/)

* HADDOCK3 user guide: [https://www.bonvinlab.org/haddock3-user-manual/](https://www.bonvinlab.org/haddock3-user-manual)

* HADDOCK forum (post your questions / search for answers): [https://ask.bioexcel.eu/c/haddock/6](https://ask.bioexcel.eu/c/haddock/6)


## Introduction

This tutorial demonstrates the use of the new modular HADDOCK3 version for predicting
the structure of an antibody-antigen complex using knowledge of the hypervariable loops
on the antibody (i.e., the most basic knowledge) and epitope information identified from NMR experiments for the antigen to guide the docking.


## Software and data setup

In order to follow this tutorial you will need to work on a Linux or MacOSX
system. We will also make use of PyMOL (freely available for
most operating systems) in order to visualize the input and output data. We will
provide you links to download the various required software and data.

Further, we are providing pre-processed PDB files for docking and analysis (but the
preprocessing of those files will also be explained in this tutorial). The files have been processed
to facilitate their use in HADDOCK and to allow comparison with the known reference
structure of the complex. 

If you are running this tutorial on your own resources _download and unzip the following_
[zip archive](https://surfdrive.surf.nl/files/index.php/s/R7VHGQM9nx8QuQn)
_and note the location of the extracted PDB files in your system_ (refer for details to the online tutorial listed above). 

_Note_ The tutorial data for the EuroCC Istanbul workshop are present in this repo under `HADDOCK3-antibody-antigen` but do not include the pre-calculated runs.

the `HADDOCK3-antibody-antigen` directory contains the following directories and files:

* `pdbs`: a directory containing the pre-processed PDB files
* `restraints`: a directory containing the interface information and the corresponding restraint files for HADDOCK3
* `runs`: a directory containing pre-calculated results (not on GitHub though)
* `scripts`: a directory containing various scripts used in this tutorial
* `workflows`: a directory containing configuration file examples for HADDOCK3

In case of a workshop of course, HADDOCK3 will usually have been installed on the system you will be using.

It this is not the case, you will have to install it yourself (see Useful links above).


## EuroCC HPC workshop, Istanbul April 2025

We will be making use of the TRUBA computational resources for this tutorial. 
The software and data required for this tutorial have been pre-installed.
Please connect to the system using your credentials either via ssh connection or from a web browser using OnDemand.

If using OnDemand, open then a terminal session using the `_arf Shell Access` menu.

In order to run the tutorial, go into you scratch directory, then unzip the required data:

`cd /arf/scratch/<my-username>`

`unzip ~egitim/HADDOCK/HADDOCK3-antibody-antigen.zip`

`cd HADDOCK3-antibody-antigen`

This will create the `HADDOCK3-antibody-antigen` directory with all necessary data and scripts and job examples ready for submission to the batch system.

HADDOCK3 has been pre-installed. To activate the HADDOCK3 environment type:

`source ~egitim/HADDOCK/haddock3/.venv/bin/activate`

You can then test that `haddock3` is indeed accessible with:

`haddock3 -h`

