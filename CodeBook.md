---
# title: "CodeBook" #
## author: "Harry Werder Coursera" ##
## date: "Saturday, December 13, 2014" ##
## output: html_document ##

# Variable Names of **average_data.txt** #
#### tidy data set as required by the project

1. **subject** by Id-Number as numberic of value 1 to 30 representing a person  
2.  **activitiy** performed as sting with the six values "**WALKING**", "**WALKING_UPSTAIRS**", "**WALKING_DOWNSTAIR**", "**SITTING**", "**STANDING**", "**LAYING*".  
The **mean** for each subject and its measured activity of the features:
3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. "tBodyAcc-mean()-Z"
-     "tBodyAcc-std()-X"
-     "tBodyAcc-std()-Y"
-     "tBodyAcc-std()-Z"
-     "tGravityAcc-mean()-X"
-     "tGravityAcc-mean()-Y"
-     "tGravityAcc-mean()-Z"
-     "tGravityAcc-std()-X"
-     "tGravityAcc-std()-Y"
-     "tGravityAcc-std()-Z"
-     "tBodyAccJerk-mean()-X"
-     "tBodyAccJerk-mean()-Y"
-     "tBodyAccJerk-mean()-Z"
-     "tBodyAccJerk-std()-X"
-     "tBodyAccJerk-std()-Y"
-     "tBodyAccJerk-std()-Z"
-     "tBodyGyro-mean()-X"
-     "tBodyGyro-mean()-Y"
-     "tBodyGyro-mean()-Z"
-     "tBodyGyro-std()-X"
-     "tBodyGyro-std()-Y"
-     "tBodyGyro-std()-Z"
-     "tBodyGyroJerk-mean()-X"
-     "tBodyGyroJerk-mean()-Y"
-     "tBodyGyroJerk-mean()-Z"
-     "tBodyGyroJerk-std()-X"
-     "tBodyGyroJerk-std()-Y"
-     "tBodyGyroJerk-std()-Z"
-     "tBodyAccMag-mean()"
-     "tBodyAccMag-std()"
-     "tGravityAccMag-mean()"
-     "tGravityAccMag-std()"
-     "tBodyAccJerkMag-mean()"
-     "tBodyAccJerkMag-std()"
-     "tBodyGyroMag-mean()"
-     "tBodyGyroMag-std()"
-     "tBodyGyroJerkMag-mean()"
-     "tBodyGyroJerkMag-std()"
-     "fBodyAcc-mean()-X"
-     "fBodyAcc-mean()-Y"
-     "fBodyAcc-mean()-Z"
-     "fBodyAcc-std()-X"
-     "fBodyAcc-std()-Y"
-     "fBodyAcc-std()-Z"
-     "fBodyAcc-meanFreq()-X"
-     "fBodyAcc-meanFreq()-Y"
-     "fBodyAcc-meanFreq()-Z"
-     "fBodyAccJerk-mean()-X"
-     "fBodyAccJerk-mean()-Y"
-     "fBodyAccJerk-mean()-Z"
-     "fBodyAccJerk-std()-X"
-     "fBodyAccJerk-std()-Y"
-     "fBodyAccJerk-std()-Z"
-     "fBodyAccJerk-meanFreq()-X"
-     "fBodyAccJerk-meanFreq()-Y"
-     "fBodyAccJerk-meanFreq()-Z"
-     "fBodyGyro-mean()-X"
-     "fBodyGyro-mean()-Y"
-     "fBodyGyro-mean()-Z"
-     "fBodyGyro-std()-X"
-     "fBodyGyro-std()-Y"
-     "fBodyGyro-std()-Z"
-     "fBodyGyro-meanFreq()-X"
-     "fBodyGyro-meanFreq()-Y"
-     "fBodyGyro-meanFreq()-Z"
-     "fBodyAccMag-mean()"
-     "fBodyAccMag-std()"
-     "fBodyAccMag-meanFreq()"
-     "fBodyBodyAccJerkMag-mean()"
-     "fBodyBodyAccJerkMag-std()"
-     "fBodyBodyAccJerkMag-meanFreq()"
-     "fBodyBodyGyroMag-mean()"
-     "fBodyBodyGyroMag-std()"
-     "fBodyBodyGyroMag-meanFreq()"
-     "fBodyBodyGyroJerkMag-mean()"
-     "fBodyBodyGyroJerkMag-std()"
-     "fBodyBodyGyroJerkMag-meanFreq()"


# How the result was accomplished
### A) Source of Data
 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
#### used files from download:
-     activity_labels.txt
-     feature.txt
-     subject_test.txt
-     X_test.txt
-     y_test.txt
-     subject_train.txt
-     X_train.txt
-     Y_train.txt

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

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

### B) Chosen data sets
The set of variables that were estimated from these signals and selected for this project are

- mean(): Mean value
- std(): Standard deviation
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
### C) The complete list of variable in tidy_data.txt used:

1. **subject** by Id-Number as numberic of value 1 to 30 representing a person  
1. **activitiy** performed as sting with the six values "**WALKING**", "**WALKING_UPSTAIRS**", "**WALKING_DOWNSTAIR**", "**SITTING**", "**STANDING**", "**LAYING*".  
The following data of sensor (v1..V81) were used which represent **means** and **standard deviations** calculations:  

- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
-     "tBodyAcc-mean()-Z"
-     "tBodyAcc-std()-X"
-     "tBodyAcc-std()-Y"
-     "tBodyAcc-std()-Z"
-     "tGravityAcc-mean()-X"
-     "tGravityAcc-mean()-Y"
-     "tGravityAcc-mean()-Z"
-     "tGravityAcc-std()-X"
-     "tGravityAcc-std()-Y"
-     "tGravityAcc-std()-Z"
-     "tBodyAccJerk-mean()-X"
-     "tBodyAccJerk-mean()-Y"
-     "tBodyAccJerk-mean()-Z"
-     "tBodyAccJerk-std()-X"
-     "tBodyAccJerk-std()-Y"
-     "tBodyAccJerk-std()-Z"
-     "tBodyGyro-mean()-X"
-     "tBodyGyro-mean()-Y"
-     "tBodyGyro-mean()-Z"
-     "tBodyGyro-std()-X"
-     "tBodyGyro-std()-Y"
-     "tBodyGyro-std()-Z"
-     "tBodyGyroJerk-mean()-X"
-     "tBodyGyroJerk-mean()-Y"
-     "tBodyGyroJerk-mean()-Z"
-     "tBodyGyroJerk-std()-X"
-     "tBodyGyroJerk-std()-Y"
-     "tBodyGyroJerk-std()-Z"
-     "tBodyAccMag-mean()"
-     "tBodyAccMag-std()"
-     "tGravityAccMag-mean()"
-     "tGravityAccMag-std()"
-     "tBodyAccJerkMag-mean()"
-     "tBodyAccJerkMag-std()"
-     "tBodyGyroMag-mean()"
-     "tBodyGyroMag-std()"
-     "tBodyGyroJerkMag-mean()"
-     "tBodyGyroJerkMag-std()"
-     "fBodyAcc-mean()-X"
-     "fBodyAcc-mean()-Y"
-     "fBodyAcc-mean()-Z"
-     "fBodyAcc-std()-X"
-     "fBodyAcc-std()-Y"
-     "fBodyAcc-std()-Z"
-     "fBodyAcc-meanFreq()-X"
-     "fBodyAcc-meanFreq()-Y"
-     "fBodyAcc-meanFreq()-Z"
-     "fBodyAccJerk-mean()-X"
-     "fBodyAccJerk-mean()-Y"
-     "fBodyAccJerk-mean()-Z"
-     "fBodyAccJerk-std()-X"
-     "fBodyAccJerk-std()-Y"
-     "fBodyAccJerk-std()-Z"
-     "fBodyAccJerk-meanFreq()-X"
-     "fBodyAccJerk-meanFreq()-Y"
-     "fBodyAccJerk-meanFreq()-Z"
-     "fBodyGyro-mean()-X"
-     "fBodyGyro-mean()-Y"
-     "fBodyGyro-mean()-Z"
-     "fBodyGyro-std()-X"
-     "fBodyGyro-std()-Y"
-     "fBodyGyro-std()-Z"
-     "fBodyGyro-meanFreq()-X"
-     "fBodyGyro-meanFreq()-Y"
-     "fBodyGyro-meanFreq()-Z"
-     "fBodyAccMag-mean()"
-     "fBodyAccMag-std()"
-     "fBodyAccMag-meanFreq()"
-     "fBodyBodyAccJerkMag-mean()"
-     "fBodyBodyAccJerkMag-std()"
-     "fBodyBodyAccJerkMag-meanFreq()"
-     "fBodyBodyGyroMag-mean()"
-     "fBodyBodyGyroMag-std()"
-     "fBodyBodyGyroMag-meanFreq()"
-     "fBodyBodyGyroJerkMag-mean()"
-     "fBodyBodyGyroJerkMag-std()"
-     "fBodyBodyGyroJerkMag-meanFreq()"
    
The **average_data.txt** file uses the data from **tidy_data.txt** to calculate the mean for each subject and its activities.  
30 subjects with their six activities results in 180 rows.The average was calculated for all 81 mesurements.  

**D) The following procedure was applied:**

1. Opened a directory on his computer as working directory "Assignment"  
2. Loaded the data down and unzipped it. A sub-folder named "UCI HAR Dataset" was created.  
3. Source of data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
3. All the needed files were copied and pasted into the working directory "Assignment"  
activity_labels.txt  
feature.txt  
subject_test.txt  
X_test.txt  
y_test.txt  
subject_train.txt  
X_train.txt  
Y_train.txt  
4. Then R Studio (Version 0.98.1062 - © 2009-2013 RStudio, Inc.) on Windows 8 was used to build-up the sequence to assemble the files into one data set as data.frame and saved the result as txt-file. The sequences are described in detail in the program code of run_analysis.R.

**Here just the main step:**

**(STEP1)** The six files with the raw data are loaded with read.table()   
**(STEP 2)** and then binded together with Cbind() and rbind() command   
**(STEP 3)** Next we went to give the columns the right label.  
The lables from feature.txt were read and one label for "subject" and one for "acivity" was added.   
**(STEP 4)** Next was the reduction of the feature to only the ones where the label had the string "mean" or "std" included.  
**(STEP 5**) The activities identified by 1 ...6 were replaced by the words like "WALKING" etc   
**(STEP 6)**The result is saved as tidy_data.txt to the working directory   
**(STEP 7)**We now calculate the average for each subject and activiy   
(each subject has done several measurements for each activity.)  
**(STEP 8)** The result is saved as average_data.txt to the workin directory


