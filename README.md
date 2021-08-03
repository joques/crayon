# crayon
This repository contains a collection of training sessions around Data Analytics and Machine Learning in **Julia**, a programming language gaining traction in complex system modelling, data science and machine learning. Julia has an easy, scripting syntax just like Python, R and Ruby. However, it is fast and designed for parallelism.

This tutorial will focus on:

1. A general introduction to Julia
1. Practical examples on:
	* Data Analytics
	* Machine Learning

## Installation and documentation

To install **Julia**, first go to the [downloads](https://julialang.org/downloads) to download  and then follow the installation instructions based on your operating system. Note that the current stable version is v1.6 and that you can install on MacOS, Windows and Linux. If you wish, you can also download the source code and compile it.

Although we will provide a quick tutorial on Julia here to get you started, we strongly encourage you to visit the [documentation](https://docs.julialang.org/en/v1/) page of the language to get more information about any extra questions you might have.

## Julia Environment and Pluto Notebook

The examples in this tutorial will be implemented using **Pluto**, a reactive notebook implemented in Julia. Pluto should be installed as a Julia package. Even though we **highly** recommend to set an environment for each project where all required packages can be installed, Pluto should be installed in the global space.

To install Pluto, follow the steps below:

1. Launch Julia (type the command `julia`);
1. Switch to package mode by pressing the right square bracket on the keyboard;
1. Type `add Pluto`.

Once the installation completes, leave the package mode and quit Julia.

Setting up an environment for each project avoids conflicting package versions in the global space in Julia. All packages are installed in the local environment and could be disposed of at some point in the future. If you  are using the latest version (*0.15.1*) of Pluto, this functionality is offered by default. However, if you are using version *0.14.7* or older, you should take the following steps to create an  environment:

1. In your command-line terminal, change directory to the folder under which you wish to create the project folder
1. Execute the command `julia -e 'using Pkg;Pkg.generate("folder_name")'`. Windows users might have to replace the single quotes with double quotes and escape the inner ones.
1. Once the command executes successfully, change directory to the newly created folder and run the command `julia --project=.` to run Julia with the local environment.
1. Switch to package mode and add your packages.
1. When completed, exit Julia.

For more information, check the [wiki page](https://github.com/fonsp/Pluto.jl/wiki).

With an environment set up, every time a new Pluto notebook is created for the project, save the notebook in the right folder and activate the environment at the beginning of the notebook. Note that creating an environment generates two configuration files `Project.toml` and `Manifest.toml`.

To start a notebook, take the following steps:
1. Launch Julia (`julia`)
1. Load and run Pluto (`using Pluto` followed by `Pluto.run()`)
1. Copy and paste the URL of the notebook into your favorite browser

Once the notebook is started, you must first save it in the correct folder. Then activate `Project.toml` as follows: `using Pkg` and `Pkg.activate("path\to\Project.toml")`.

## Contents

We will cover the following topics in this tutorial:

1. Introduction to Julia
1. Data Analytics
	* Latent Class Analysis
	* Data Profiling
	* Model Fitting and Optimisation
	* Big Data and AI
1. Machine Learning
	* Regression and Classification
	* Regularisation
	* Overview of Neural Networks

## Collaborators

This effort is contributed to by:
1. Lameck Amugongo
2. Victor Katoma
3. José Quenum
