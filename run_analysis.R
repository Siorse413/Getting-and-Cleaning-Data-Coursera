## final project for cleaning and tidying data

## Merges the training and the test sets to create one data set.
run_analysis <- function () {
        ## first get test subject id
        test_sub_id <- read.table("subject_test.txt")
        ## 2nd get test subject data, 561 variables
        test_data <- read.table("X_test.txt")
        ## 3rd import activity id
        test_activity <- read.table("y_test.txt")
        # 4th import column names from features.txt
        test_col_names <- read.table("features.txt")
        ## build test_data_set, test_sub_is as column, test data as rows, and 
        sub_dat <- cbind(test_sub_id, test_data)
        ## test_activity as last column
        act_sub_dat <- cbind(sub_dat, test_activity)
        ## applying test_col_names as column
        ## names
        names(act_sub_dat)[1] <- "subject_ID"
        names(act_sub_dat)[2:562] <- paste(test_col_names$V2[1:561], sep = "")
        names(act_sub_dat)[563] <- "activity"
        ## test table built, now build training data, just use the above but sub in training files
        train_sub_id <- read.table("subject_train.txt")
        ## train subject data
        train_data <- read.table("X_train.txt")
        ##train activity id
        train_activity <- read.table("y_train.txt")
        ## train_col names same as test_col_names
        train_col_names <- test_col_names
        ## build train data set
        train_sub_dat <- cbind(train_sub_id, train_data)
        train_act_sub_dat <- cbind(train_sub_dat, train_activity)
        names(train_act_sub_dat)[1] <- "subject_ID"
        names(train_act_sub_dat)[2:562] <- paste(test_col_names$V2[1:561], sep = "")
        names(train_act_sub_dat)[563] <- "activity"
        ## ow Merge Data matching all columns using rbind
        merged_test_train <- rbind(act_sub_dat, train_act_sub_dat)
        

## Extracts only the measurements on the mean and standard deviation for each measurement.
        ## use grepl to get column names from merged data that have "std or mean"
        std_mean_col <- merged_test_train[grepl("std|mean", names(merged_test_train), ignore.case = TRUE)]

## Uses descriptive activity names to name the activities in the data set

        std_mean_col <- cbind(merged_test_train$subject_ID, std_mean_col, merged_test_train$activity)
        names(std_mean_col)[1] <- "subject_id"
        names(std_mean_col)[88] <- "activity"
        ## doing the assignment with a loop
        for (i in 1:10299) {
               
                if (std_mean_col$activity[i] == "1") {
                        std_mean_col$activity[i] <- "walking"
                } else if (std_mean_col$activity[i] == "2") {
                        std_mean_col$activity[i] <- "walking upstairs"
                } else if (std_mean_col$activity[i] == "3") {
                        std_mean_col$activity[i] <- "walking downstairs"
                } else if (std_mean_col$activity[i] == "4") {
                        std_mean_col$activity[i] <- "sitting"
                } else if (std_mean_col$activity[i] == "5") {
                        std_mean_col$activity[i] <- "standing"
                } else if (std_mean_col$activity[i] == "6") {
                        std_mean_col$activity[i] <- "laying"
                } else 
                        return()
}
        ## organize data by subject id and activity then calculate mean
        
        spltgrp <- aggregate(. ~subject_id + activity, std_mean_col,mean)
       ## write new dataset  
        write.table(spltgrp, "spltgrp.txt", row.name=FALSE)
        write.csv(spltgrp, "spltgrp.csv")
        
        
}