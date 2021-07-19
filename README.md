# crayon
This repository contains a collection of training sessions around Data Analytics and Machine Learning in **Julia**, a programming language gaining traction in complex system modelling, data science and machine learning. Julia has an easy, scripting syntax just like Python, R and Ruby. However, it is fast and designed for parallelism.

This tutorial will focus on:

1. A general introduction to Julia
1. Practical examples on:
	* Data Analytics
	* Machine Learning

## Installation and documentation

To install **Julia**, first go to the (downloads)[https://julialang.org/downloads] to download  and then follow the installation instructions based on your operating system. Note that the current stable version is v1.6 and that you can install on MacOS, Windows and Linux. If you wish, you can also download the source code and compile it.

Although we will provide a quick tutorial on Julia here to get you started, we strongly encourage you to visit the (documentation)[https://docs.julialang.org/en/v1/] page of the language to get more information about any extra questions you might have.

## Julia Environment and Pluto Notebook

The examples in this tutorial will be implemented using **Pluto**, a reactive notebook implemented in Julia. Pluto should be installed as a Julia package. Even though we **highly** recommend to set an environment for each project where all required packages can be installed, Pluto should be installed in the global space.

To install Pluto, follow the steps below:

1. launch Julia (type the command `julia`)
1. switch to package mode by pressing the right square bracket on the keyboard
1. type `add Pluto`

It is **highly** recommended to set up an environment for each project to avoid conflicting package versions in the global space in Julia. In so doing, all needed packages will be installed in the local environment and could be disposed of at some point in the future. In the remainder of this document, I am assuming that you have installed Julia and set up your path. If not, please check the following (link)[https://julialang.org/downloads] for downloading and (this one)[https://julialang.org/downloads/platform] for setting up Julia for your OS.

To create an environment, take the following steps:
1. In your command-line terminal, change directory to the folder under which you wish to create the project folder.
2. Execute the command `julia -e 'using Pkg;Pkg.generate("folder-name")'`. Windows users might have to replace the single quotes with double quotes and escape the inner ones.

3. Once the command executes successfully, change directory to the newly created folder and run the command `julia --project=.` to run Julia with the local environment.
4. Switch to package mode and add your packages.
5. When completed, exit Julia.

With an environment set up, every time a new Pluto notebook is created for the project, save the notebook in the right folder and activate the environment at the beginning of the notebook.

## Contents

detailed content of the repo goes here

## Collaborators

This effort is contributed to by:
1. Lameck Amugongo
2. Victor Katoma
3. José Quenum
