library(plyr)

setwd("C:/Coursera/GetCleanData/ProjectData/UCI HAR Dataset/")

## [1]: Merge the training and test sets to create one data set ##
##--------------------------------------------------------------------------------------------start-1##

X_trainData <- read.table("train/X_train.txt")
Y_trainData <- read.table("train/y_train.txt")
subject_trainData <- read.table("train/subject_train.txt")

X_testData <- read.table("test/X_test.txt")
Y_testData <- read.table("test/y_test.txt")
subject_testData <- read.table("test/subject_test.txt")

x_MergeData <- rbind(X_trainData, X_testData)
y_MergeData <- rbind(Y_trainData, Y_testData)
subject_MergeData <- rbind(subject_trainData, subject_testData)

##--------------------------------------------------------------------------------------------end-1##

## [2]: Extract only the measurements on the mean and standard deviation for each measurement ##
##--------------------------------------------------------------------------------------------start-2##

featuresData <- read.table("features.txt")


mean_and_std_cols <- grep("-(mean|std)\\(\\)", featuresData[, 2]) # get columns names having "mean" or "std "
x_MergeData <- x_MergeData[, mean_and_std_cols]
names(x_MergeData) <- featuresData[mean_and_std_cols, 2]

##--------------------------------------------------------------------------------------------end-2##

## [3]: Use descriptive activity names to name the activities in the data set
##--------------------------------------------------------------------------------------------start-3##

activitiesLableData <- read.table("activity_labels.txt")
y_MergeData[, 1] <- activitiesLableData[y_MergeData[, 1], 2]
##--------------------------------------------------------------------------------------------end-3##

## [4]: Appropriately label the data set with descriptive variable names
##--------------------------------------------------------------------------------------------start-4##
names(y_MergeData) <- "activity"
names(subject_MergeData) <- "subject"

completeData <- cbind(x_MergeData, y_MergeData, subject_MergeData) #column bind data into one var
##--------------------------------------------------------------------------------------------end-4##

## [5]: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##--------------------------------------------------------------------------------------------start-5##


tidy_data <- ddply(completeData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(tidy_data, "finalTidyData.txt", row.name=FALSE)

##--------------------------------------------------------------------------------------------end-5##
