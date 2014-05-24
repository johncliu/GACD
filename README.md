### Introduction

This is my course project submission for the Getting and Cleaning Data (003) Course on Coursera. Within this repo are several files:

run_analysis.R       R script that converts the Samsung raw data to a tidy dataset

CodeBook.md          file describing the variables, data, and transformations used to create the tidy dataset

README.md            this file

tidydata.txt         the resulting tidy dataset

### Operation

The run_analysis.R script assumes that the Samsung data set exists in the current working directory where the script resides. The script reads the data and labels and transforms the data to a tidy dataset saved under the name tidydata.txt in the working directory. Execute from the R shell with the following command:

source("run_analysis.R")



