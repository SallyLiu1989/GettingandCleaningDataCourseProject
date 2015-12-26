## README
### This file explains how a user should run the R script to obtain the desired output file. Steps to be followed are as below:
* Open R Console or RStudio.
* Set the working directory to be the directory which contains the 'UCI HAR Dataset' folder by using setwd(). Otherwise an Error message "Error: 'UCI HAR Dataset' folder doesn't exist." will display and the function will be terminated.
* Download the run_analysis.R script also into the working directory.
* Execute R command 'source("run_analysis.R")'.
* After the function completes, an output file named 'tidy_data_set.txt' will be generated in the working directory.

## How does it work?
### Step 1: Merges the training and the test sets to create one data set
The complete training set should comprise three parts:

* Subject ID: subject_train.txt
* Acitivity ID: Y_train.txt
* Measured results: X_train.txt

Similarly, the complete test set should comprise:

* Subject ID: subject_test.txt
* Acitivity ID: Y_test.txt
* Measured results: X_test.txt

Therefore the script first reads in 6 files into data tables and combine them into one complete dataset using cbind() and rbind().

### Step 2: Extracts only the measurements on the mean and standard deviation for each measurement
The features.txt file contains the text description of each variable measured. Therefore, this step first rename all the columns with the full descritions and then uses select() function from the dplyr package to filter out only those column names containing the key word 'mean()' and 'std()'.

### Step 3: Use descriptive activity names to name the activities in the data set
The activity_labels.txt file contains the ID and description pairs of the activities each subject was required to perform, sorted by the activity ID. To replace the activity ID with these names, the script first reads in this file and the creates a new factor variable using the descriptive names as labels and finally assigns it back to the activity column.

### Step 4: Appropriately labels the data set with descriptive variable names
To make the variable names easier to understand and comply to the R naming conventions, the script substitutes some abbreviations with full names, such as turn 'Acc' into 'LinearAcceleration', also replaces '-' with '.' so that the names become period-separated.

### Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
To achieve this, the script uses the pipeline operation %>% from dplyr pakcage to chain the following actions together:

* Split the data table by Subject first and then Activity using group_by()
* Take the output and calculate the means for each non-grouping variables using summarize_each()
* Sort the result by Subject and Activity to fix the ordering of the records

Finally, the output is written to a file named "tidy_data_set.txt" in the current working directory.