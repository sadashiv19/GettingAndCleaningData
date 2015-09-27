Getting and Cleaning Data - Course Project
Download the files from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Unzip the files in following file structure:
C:\Coursera\GetCleanData\ProjectData\UCI HAR Dataset

Then execute R script, run_analysis.R. It does the following:
1.	The training and test datasets are merged
2.	Column names having “mean” and “std” are seperated
3.	Use descriptive activity names to name the activities in the data set
4.	label the data set with descriptive variable names
5.	Creates a tidy dataset with average (mean) value of each variable for each subject.

The script creates the file – finalTidyData.txt in C:\Coursera\GetCleanData\ProjectData\UCI HAR Dataset\

