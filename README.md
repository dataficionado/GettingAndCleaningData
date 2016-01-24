==================================================================
INTRODUCTION
==================================================================

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

This repo contains one R script called run_analysis.

The purpose of the sole R script is to analyse the data collected from the accelerometers from the Samsung Galaxy S smartphone. 

==================================================================
INITIAL SET UP
==================================================================

Before you can run the script, the following steps MUST be done:

1) Download the data from this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2) Unzip and copy the folder "UCI HAR Dataset" to your R working directory

3) Copy the run_analysis.R file to your working directory too

4) Enable the script in R Studio with the following command: source("./run_analysis.R")

==================================================================
FUNCTIONALITY
==================================================================

The run_analysis.R script does the following:

1) Download the data, then merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement.

3) Appropriately labels the dataset with descriptive variable names.

4) Create a tiny dataset with the average of each variable for each activity and each subject.

5) Output the new data as a CSV file
