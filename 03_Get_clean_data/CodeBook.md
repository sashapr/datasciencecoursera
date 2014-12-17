# CODE BOOK
Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## VARIABLES FROM THE ORIGINAL DATASET

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

## TIDY DATA VARIABLES
The final data set consists of 81 variables. 
1. I chose only means and standard deviations of the original variables (79 variables in total).
2. For every subject and activity combination I took the average of the all 79 variables and created a final tidy_data_average set. Thus, each cell there shows the average for the corresponding subject (column "subject.ID") and corresponding activity (column "activity") for a given variable from the original data set (all other 79 column names):

Name |  Type | Description  
--- | ---
subject.ID | integer | ID of subjects, from 1 to 30
activity | string | Activity performed (Walking, Walking_upstrairs, Walking_Downstairs, Sitting, Standing, Laying)

Measured averages | Type
--- | ---
tBodyAcc.mean...X | numeric               
  tBodyAcc.mean...X | numeric     
  tBodyAcc.mean...Y           | numeric    
  tBodyAcc.mean...Z               | numeric
  tGravityAcc.mean...X            | numeric
  tGravityAcc.mean...Y            | numeric
  tGravityAcc.mean...Z            | numeric
  tBodyAccJerk.mean...X           | numeric
 tBodyAccJerk.mean...Y           | numeric
 tBodyAccJerk.mean...Z           | numeric
 tBodyGyro.mean...X              | numeric
 tBodyGyro.mean...Y              | numeric
 tBodyGyro.mean...Z              | numeric
 tBodyGyroJerk.mean...X          | numeric
 tBodyGyroJerk.mean...Y          | numeric
 tBodyGyroJerk.mean...Z          | numeric
 tBodyAccMag.mean..              | numeric
 tGravityAccMag.mean..           | numeric
 tBodyAccJerkMag.mean..          | numeric
 tBodyGyroMag.mean..             | numeric
 tBodyGyroJerkMag.mean..         | numeric
 fBodyAcc.mean...X               | numeric
 fBodyAcc.mean...Y               | numeric
 fBodyAcc.mean...Z               | numeric
 fBodyAcc.meanFreq...X           | numeric
 fBodyAcc.meanFreq...Y           | numeric
 fBodyAcc.meanFreq...Z           | numeric
 fBodyAccJerk.mean...X           | numeric
 fBodyAccJerk.mean...Y           | numeric
 fBodyAccJerk.mean...Z           | numeric
 fBodyAccJerk.meanFreq...X       | numeric
 fBodyAccJerk.meanFreq...Y       | numeric
 fBodyAccJerk.meanFreq...Z       | numeric
 fBodyGyro.mean...X              | numeric
 fBodyGyro.mean...Y              | numeric
 fBodyGyro.mean...Z              | numeric
 fBodyGyro.meanFreq...X          | numeric
 fBodyGyro.meanFreq...Y          | numeric
 fBodyGyro.meanFreq...Z          | numeric
 fBodyAccMag.mean..              | numeric
 fBodyAccMag.meanFreq..          | numeric
 fBodyBodyAccJerkMag.mean..      | numeric
 fBodyBodyAccJerkMag.meanFreq..  | numeric
 fBodyBodyGyroMag.mean..         | numeric
 fBodyBodyGyroMag.meanFreq..     | numeric
 fBodyBodyGyroJerkMag.mean..     | numeric
 fBodyBodyGyroJerkMag.meanFreq.. | numeric
 tBodyAcc.std...X                | numeric
 tBodyAcc.std...Y                | numeric
 tBodyAcc.std...Z                | numeric
 tGravityAcc.std...X             | numeric
 tGravityAcc.std...Y             | numeric
 tGravityAcc.std...Z             | numeric
 tBodyAccJerk.std...X            | numeric
 tBodyAccJerk.std...Y            | numeric
 tBodyAccJerk.std...Z            | numeric
 tBodyGyro.std...X               | numeric
 tBodyGyro.std...Y               | numeric
 tBodyGyro.std...Z               | numeric
 tBodyGyroJerk.std...X           | numeric
 tBodyGyroJerk.std...Y           | numeric
 tBodyGyroJerk.std...Z           | numeric
 tBodyAccMag.std..               | numeric
 tGravityAccMag.std..            | numeric
 tBodyAccJerkMag.std..           | numeric
 tBodyGyroMag.std..              | numeric
 tBodyGyroJerkMag.std..          | numeric
 fBodyAcc.std...X                | numeric
 fBodyAcc.std...Y                | numeric
 fBodyAcc.std...Z                | numeric
 fBodyAccJerk.std...X            | numeric
 fBodyAccJerk.std...Y            | numeric
 fBodyAccJerk.std...Z            | numeric
 fBodyGyro.std...X               | numeric
 fBodyGyro.std...Y               | numeric
 fBodyGyro.std...Z               | numeric
 fBodyAccMag.std..               | numeric
 fBodyBodyAccJerkMag.std..       | numeric
 fBodyBodyGyroMag.std..          | numeric
 fBodyBodyGyroJerkMag.std..  | numeric


