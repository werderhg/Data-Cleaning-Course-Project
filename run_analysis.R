
library(downloader)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download(url, "dataset.zip", mode="wb",method = "curl")

unzip("dataset.zip")

unlink(url)

### START
    #set my working directory to the location where the files are unzipped.

# Merges the training and the test sets to create one data set.
#   1. STEP
#       Read the files into data frames
#           Number of the persons of training (subject_train)
#           Activities of the data of training (y_train)
#           Data for each person of the training (Y_train)
#           the Number of the persons of test (subject_test)
#           Activities of the data of test (y_test)
#           Data for each person of the test (Y_test)


subject_train<-read.table("subject_train.txt")
y_train<-read.table("y_train.txt")
X_train<-read.table("X_train.txt")
subject_test<-read.table("subject_test.txt")
y_test<-read.table("y_test.txt")
X_test<-read.table("X_test.txt")

#   2. STEP
#        Add the files together into one file
train_raw<- cbind(subject_train, y_train,X_train)
test_raw<-cbind(subject_test,y_test, X_test)
Data_raw<-rbind(train_raw,test_raw)

        
# 3. give the column the right labels (V1 etc is replaced my the feature name)
    #   read the names of the columns
    a<-read.table("features.txt")
    # create the first two
    q<-cbind (c("1","2"),c("subject", "activity"))
    #make one data.frame
    q<-rbind(q,a)
    #create a factor with only the new column names
    my_new_col_names<-q[,2]
    colnames(Data_raw)<-my_new_col_names

#   4. Subsetting the data needed for analysing

    # which have name mean as vector of true and false
    is_mean<-grepl("mean",my_new_col_names)
    #which have sdt as vector of true and false
    is_std<-grepl("std",my_new_col_names)
    is_both<-(is_mean|is_std)  #vector with TRUE if "mean" or "std"
    is_both[1]<-TRUE #subject must be also true
    is_both[2]<-TRUE #activitiy must also be true
    # is_both has now all TRUE for the columns that we want in tidy data

    #reduction of Data_raw to all the column with "mean" and "sdt"
    Data_select<-subset(Data_raw,select=is_both)

#   5. Activity (1..6) shall be replace by the labels (Walking, Waklking_upstairs,..)
    act<-read.table("activity_labels.txt")
for (i in (1:length(Data_select[,1]))){
    if (Data_select[i,2]== 1) {Data_select[i,2]<-"WALKING"}
    if (Data_select[i,2]== 2) {Data_select[i,2]<-"WALKING_UPSTAIRS"}
    if (Data_select[i,2]== 3) {Data_select[i,2]<-"WALKING_DOWNSTAIRS"}
    if (Data_select[i,2]== 4) {Data_select[i,2]<-"SITTING"}
    if (Data_select[i,2]== 5) {Data_select[i,2]<-"STANDING"}
    if (Data_select[i,2]== 6) {Data_select[i,2]<-"LAYING"}
}
#   6. Send the data to a file
write.table(Data_select,"tidy_data.txt",row.names=FALSE)

# 7. calculate the means (feature variable start in 3rd column ub to the full length)
Data_average <- ddply(Data_select, .(subject, activity), function(x) colMeans(x[, 3:length(Data_select)]))
# 8. Send the data to a file
write.table(Data_average,"average_data.txt",row.names=FALSE)

