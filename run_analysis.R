if(!file.exists('UCI HAR Dataset')) stop('\'UCI HAR Dataset\' folder doesn\'t exist.', call.=FALSE)

## Assume current working directory contains the folder UCI HAR Dataset
library(data.table)
library(dplyr)

## Step 1: Merges the training and the test sets to create one data set
## Read and create full training set
train <- fread('UCI HAR Dataset/train/X_train.txt', colClasses='numeric')
train.sub <- fread('UCI HAR Dataset/train/subject_train.txt', colClasses='integer')
train.act <- fread('UCI HAR Dataset/train/Y_train.txt', colClasses='integer')

## Read and create full test set
test <- fread('UCI HAR Dataset/test/X_test.txt', colClasses='numeric')
test.sub <- fread('UCI HAR Dataset/test/subject_test.txt', colClasses='integer')
test.act <- fread('UCI HAR Dataset/test/Y_test.txt', colClasses='integer')

## Merge the test and training sets into one
data.full <- rbind(cbind(train.sub, train.act, train), cbind(test.sub, test.act, test))

## Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
## Rename the columns in the full data set using the features info
features <- fread('UCI HAR Dataset/features.txt')
f.names <- c(features$V2)
colnames(data.full) = c("Subject", "Activity", f.names)

## Subsetting using select function from dplyr package, including the subject id and activity id
data.meanstd <- cbind(select(data.full, Subject:Activity), 
                      select(data.full, contains("mean()")), select(data.full, contains("std()")))

## Step 3: Use descriptive activity names to name the activities in the data set
activities <- fread('UCI HAR Dataset/activity_labels.txt')
data.meanstd <- mutate(data.meanstd, Activity=factor(Activity, labels=c(activities$V2)))

## Step 4: Appropriately labels the data set with descriptive variable names. 
## Replace certain abbreviations with full names using gsub() function.
data.meanstd.names <- colnames(data.meanstd)
data.meanstd.names<- gsub('Acc', 'LinearAcceleration', data.meanstd.names)
data.meanstd.names <- gsub('Gyro', 'AngularVelocity', data.meanstd.names)
data.meanstd.names <- gsub('-', '.', data.meanstd.names)
colnames(data.meanstd) <- data.meanstd.names

## Step 5: From the data set in step 4, creates a second, 
## independent tidy data set with the average of each variable for each activity and each subject

## Use the pipeline operator to first group the data by Subject and Activity, then summarize all non-grouping
## variables using summarize_each(), finally sort the data based on Subject and Activity.
data.tidy <- data.meanstd %>% group_by(Subject, Activity) %>% summarize_each(funs(mean)) %>% 
  arrange(Subject, Activity)
write.table(data.tidy, file="tidy_data_set.txt", row.name = FALSE)