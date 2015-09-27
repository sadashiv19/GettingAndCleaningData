Input:
Files are downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Process (script):
Process script: run_analysis.R
Output:
Data file: finalTidyData.txt
Variables:
Data variables: data is stored in following variables
•	X_trainData
•	Y_trainData
•	subject_trainData
•	X_testData
•	Y_testData
•	subject_testData
•	featuresData
•	activitiesLableData
Merged data is stored in following variables
•	x_MergeData
•	y_MergeData
•	subject_MergeData
Process variables
•	mean_and_std_cols contains column names which has mean and std 
•	completeData data from x_MergeData, y_MergeData, subject_MergeData are combined (binded) based on columns
•	tidy_data contains the relevant averages which are copied to finalTidyData.txt  file.  
