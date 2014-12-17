# Getting and cleaning data: Coursera project
This file describes how to use code to prepare tidy data out of Human Activity Recognition Using Smartphones Data Set (more information in the data is avalilable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Data
All the data should be unzipped to the same directory as code file (run_analysis.R). Working directory should be set as the directory with the code and data (first line in the file).

## Analysis
Run the code "run_analysis.R". The code includes comments, therefore should be relatively straight-forward to follow. The code does the following:
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set.
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Codebook is available in a separate file.

