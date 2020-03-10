# OVERVIEW #

**OTILIB** 

This is the repository for the implementation of Order Truncated Imaginary numbers (OTI numbers) in different programming languages. OTI algebra is the extension of Dual numbers such that they can compute higher order derivatives of multiple variables. They provide a concise extension of the Dual numbers ( a + b eps, eps^2 = 0 ) and are applicable to computing high order derivatives computer programmed functions.

***

## Current Programming languages: 
* **C** (C99)
* **Python** (Version 3 or newer. We are currently using [Cython](http://cython.org)

The following programming languages are to be implemented in a very near future:

* **Fortran** (F95 or newer, only dense implementation so far)
* **C++** (C++11)

Far-future implementation we are looking forward are:

* **Matlab**
* **Java** / **Javascript**
* **Julia**

## Quick set up.

First you need [Anaconda 3](https://www.anaconda.com/distribution/). After installing, go to the Terminal and go to the directory where you donwloaded this repository.
```
cd /PATH/TO/OTILIB-MASTER/
```

The recomended thing to do is to create an environment with the required dependencies. Then you will need to install the environment.yml file by runing:
```
conda env create -f environment.yml
```

After runing the previous command, you should have installed a conda environment that will allow you to use the python library. To activate this environment, run the following command:
```
conda activate pyoti
```

Finally, to install the library, run:
```
cd path/to/src/otilib
mkdir build
cd build
cmake ..
make
```
 
This will compile the library and link to the required dependencies.

NOTE: If this is your first time compiling the library, you should run the following command after the library is compiled:

```
make gendata
```

This will pre-compute the data required for 

* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions



## What is this repository for? 

* Quick summary
* Version: 1.0


### Requirements

#### **C** version

The current version depends on ```stdlib.h``` and ```math.h```

#### Python version 3:

Requirements:
- Numpy
- Scipy
- partitionsets

***

## Contribution guidelines ###

* To be defined


## Who do I talk to? ###

* Direct comments to the library should be addressed to Mauricio Aristizabal to [this e-mail](mailto:mauriaristi@gmail.com) with the subject: "[OTILIB]:*concern*: your subject "

The word *concern* may be replaced by one of the following (choose accordingly):
* *bugc*: C code bugs
* *bugpy*: Python code bugs
* *doc*: Documentation bugs
* *example*: Trouble in one of the examples.
* *wrapper*: Questions related with wrappers to other languages.

***

## Other things 

* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)
