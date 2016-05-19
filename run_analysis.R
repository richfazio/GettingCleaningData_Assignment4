###########################
## - Prepare environment ##
########################### 

library(plyr)
setwd("C:/Users/rfazio/Desktop/Fazio/P/ZZ Personal/ML Class/DataScienceProgram/Data/C2_3_GettingCleaning_Week3")

#############################
## Download/unzip raw data ##
############################# 
if (!file.exists("./UCI HAR Dataset")) {
    fileUrl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, "Dataset.zip")
    unzip("Dataset.zip") 
}

#############################
## read test/training data ##
#############################
X_test  <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_test  <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_test  <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

######################################################################
## 1. Merges the training and the test sets to create one data set. ##
######################################################################
X <- rbind(X_train, X_test)
Y <- rbind(Y_train, Y_test)
subject <- rbind(subject_train, subject_test)

################################################################################################
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. ##
################################################################################################
features <- read.table("./UCI HAR Dataset/features.txt")

########################################################
## Select only "mean and standard deviation" features ##
########################################################
selected_features <- grep("-(mean|std)\\(\\)", features[, 2])
X <- X[, selected_features]
names(X) <- features[selected_features, 2]

###############################################################################
## 3. Uses descriptive activity names to name the activities in the data set ##
###############################################################################

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
Y[, 1] <- activity_labels[Y[, 1], 2]
names(Y) <- "Activity"

###########################################################################
## 4. Appropriately labels the data set with descriptive variable names. ##
###########################################################################
names(subject) <- "Subject"

###########################
## Merge it all together ##
###########################
X_Y_subject <- cbind(X, Y, subject)

#############################
## Rename all the features ##
#############################
names(X_Y_subject)<-gsub("std()", "Standard Deviation", names(X_Y_subject))
names(X_Y_subject)<-gsub("mean()", "Mean", names(X_Y_subject))
names(X_Y_subject)<-gsub("^t", "Time", names(X_Y_subject))
names(X_Y_subject)<-gsub("^f", "Frequency", names(X_Y_subject))
names(X_Y_subject)<-gsub("Acc", "Accelerometer", names(X_Y_subject))
names(X_Y_subject)<-gsub("Gyro", "Gyroscope", names(X_Y_subject))
names(X_Y_subject)<-gsub("Mag", "Magnitude", names(X_Y_subject))
names(X_Y_subject)<-gsub("BodyBody", "Body", names(X_Y_subject))

#######################################################################################
## 5. From the data set in step 4                                                    ##
##    Creates a second, independent tidy data set with the average of each variable  ##
##    for each activity and each subject.                                            ##
#######################################################################################

X_Y_subject_avg <- ddply(X_Y_subject, .(Subject, Activity), function(x) colMeans(x[, 1:66]))

#Create tidy data set
write.table(X_Y_subject_avg, "tidy_data_X_Y_subject_avg.txt", row.name=FALSE)
