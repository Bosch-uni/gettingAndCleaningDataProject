# Load and Install Needed packages
library(data.table)
library(dplyr)
library(plyr)

# Preliminary Work

# set up the link, file name, and directory of the project
link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
projDir <- getwd()
archive <- "D:/DataScience/gettingAndCleaningData/finalProject/Getting-and-Cleaning-Data-Project/archive.zip"

# Check to see if the file exists, if not, download and unzip
if (!file.exists("UCI HAR Dataset")) {
  download.file(link, destfile = archive)
  unzip(archive,exdir=projDir)
}

# read the features and labels data covered in the codebook
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("index", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("number", "feature"))
x_train_data <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$feature)
y_train_data <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "index")
subject_train_data <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_test_data <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$feature)
y_test_data <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "index")
subject_test_data <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# 1. Merge the training and test with the subject information to create one data set.

# merge the training and test sets; training to data, then togther
x_merge <- rbind(x_test_data, x_train_data)
y_merge <- rbind(y_train_data, y_test_data)
subject_merge <- rbind(subject_train_data, subject_test_data)

data_merge<- cbind(x_merge, y_merge, subject_merge)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

data <- select(data_merge, subject, index, contains('mean'), contains('std'))

# 3. Uses descriptive activity names to name the activities in the data set
# swap activity names rather than the index value

data$index <- activities[data$index, 2]
data_arch <- data

# remove unused data frames to conserve memory
remove(activities, features, x_train_data, y_train_data, subject_train_data,
       x_test_data, y_test_data, subject_test_data)

# 4. Appropriately labels the data set with descriptive variable names.
# Clean up the column names, use capitalization..
# Column names full of isssues, order of gsub's important

names(data) <- gsub("index", "Activity", names(data))
names(data) <- gsub("subject", "Subject", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("tBody", "TimeBody", names(data))
names(data) <- gsub("tGravity", "TimeGravity", names(data))
names(data) <- gsub("fBody", "FrequencyBody", names(data))
names(data) <- gsub("fGravity", "FrequencyGravity", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub(".mean", "Mean", names(data))
names(data) <- gsub("...X", "-X", names(data))
names(data) <- gsub("...Y", "-Y", names(data))
names(data) <- gsub("...Z", "-Z", names(data))
names(data) <- gsub("angle.", "Angle", names(data))
names(data) <- gsub("ang-", "Angle", names(data))

# 5. From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.

data_final <- group_by(data, Subject, Activity) %>%
  summarise_all(list(mean = mean))
