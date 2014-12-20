---
#"ReadMe" #
author: "Harry Werder Coursera"
date: "Sunday, December 14, 2014"
output: html_document  

This is the ReadMe File in markdown format for the Course Project "Getting & Cleaning Data"


##Content of this assignment

- **ReadMe.md**:          file explaining the work done and results
- **average_data.txt**    file with the mean of each feature for each activity
- **CodeBook.md**:        Explaining the data fields of the file average_data.txt
- **run_analysis.R:**    File containing the R-code to produce the the files tidy_data.txt und average_data.txt

## Output of the analysis#
**average_data.txt**    tidy data file with the mean of each feature for each activity

## Work performed:

The student followed the instruction given in the course project.

1. Opened a directory on his computer as working directory "Assignment"
2. Loaded the data down and unzipped it. A sub-folder named "UCI HAR Dataset" was created.
    Source of data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
3. All the needed files were copied and pasted into the working directory "Assignment"  
activity_labels.txt  
feature.txt  
subject_test.txt  
X_test.txt   
y_test.txt  
subject_train.txt  
X_train.txt  
Y_train.txt  
4. Then R Studio (Version 0.98.1062 - © 2009-2013 RStudio, Inc.) on Windows 8 was used to build-up the sequence to assemble the files into one data set as data.frame and saved the result as txt-file.

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

    
