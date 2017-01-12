# Background Data  
From the Assignment website:  
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Data Sources
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Note that the above file also includes data for testing and training, subject id, activity id, activity labels, the names of the variables, and the raw data.  

# Variables
## Input
run_analysis grabs training data (X_train.txt), test data (X_test.txt), training subject index (subject_train.txt), test subject index (subject_test.txt), training activity index (y_train.txt), and test activity index (y_test.txt) and merges them into one table.  For column headers, the variables, run_analysis names the variables using the features.txt.  All files listed are available from the link above.  

## Output
The variables produced by run_analysis are the average of each variable for each subject's activity.  Thus, an example row would be the average of subject_id number one's data when walking.  Variable names are listed below:  

[1] "subject_id"                           "activity"                             "tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
 [5] "tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                     "tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
 [9] "tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                 "tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
[13] "tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                  "tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
[17] "tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                 "tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
[21] "tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                   "tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
[25] "tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                    "tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"              
[29] "tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"                "tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
[33] "tBodyAccMag-mean()"                   "tBodyAccMag-std()"                    "tGravityAccMag-mean()"                "tGravityAccMag-std()"                
[37] "tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"                "tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"                  
[41] "tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"               "fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
[45] "fBodyAcc-mean()-Z"                    "fBodyAcc-std()-X"                     "fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
[49] "fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"                "fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"               
[53] "fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"                "fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                
[57] "fBodyAccJerk-std()-Z"                 "fBodyAccJerk-meanFreq()-X"            "fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"           
[61] "fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                   "fBodyGyro-mean()-Z"                   "fBodyGyro-std()-X"                   
[65] "fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                    "fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
[69] "fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                   "fBodyAccMag-std()"                    "fBodyAccMag-meanFreq()"              
[73] "fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-std()"            "fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"             
[77] "fBodyBodyGyroMag-std()"               "fBodyBodyGyroMag-meanFreq()"          "fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"          
[81] "fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"          "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[85] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                 "angle(Y,gravityMean)"                 "angle(Z,gravityMean)"  
