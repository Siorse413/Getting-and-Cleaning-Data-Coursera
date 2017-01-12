# About Run_Analysis

## Overview
Run_Analysis grabs training data (X_train.txt), test data (X_test.txt), training subject index (subject_train.txt), test subject index (subject_test.txt), training activity index (y_train.txt), and test activity index (y_test.txt) and merges them into one table. For column headers, the variables, run_analysis names the variables using the features.txt, providing each variable with an appropriate descriptive variable name. All files listed are available from the link included in the codebook, also found in this repository.

Run_Analysis then extracts only the measurements on the mean and standard deviation for each measurement, using a grepl command on the terms "std" or "mean".

Then, Run_Analysis replaces each activity code with the appropriate label from the activity_lable file.  

From the data set above, run_analysis creates a second, independent tidy data set with the average of each variable for each activity and each subject and creates a file in two formats, .csv and .txt of the resulting data set, and places it in the working directory.

## Note
Prior to running, make sure that all files listed above are downloaded, unzipped and placed individually in the appropriate working directory.  

