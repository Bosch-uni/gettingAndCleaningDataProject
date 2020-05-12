# Getting-and-Cleaning-Data-Project

For these tasks, one script has been provied, run_analysis.R.

The script run_analysis.R could have been broken out into 2 scripts one to pull the
data down, the other to run the analysis, but these functions were consolidated and
code was put into place to prevent repeatedly pulling the data from the source.

# What run_analysis does
1.  Loads the required libraries.
2.  Sets the environment.
3.  If the unzipped directory does not exist, it pulls down the data and unzips it.
4.  The zipped original data is left in place, as an archive if necessary.
5.  Reads the required data tables.
6.  Combines the Test and Training data and binds that to the Subject Training and
    Test Data.
7.  Removes the unecessary data sets to conserve memory.
8.  Extracts the columns that contain "mean" and "std" per the requirements
8.  Replaces the Activity number with the activity name for ease.
9.  Cleans up the column names, opting for capitalization, though I prefer camel case.
10. Groups the data by the Subject and the Activity; and summarizes the variables by the mean.

# Notes
The link for the article was broken when I attempted to access.  It would have been
helpful to have more background.

# Tasks
You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



