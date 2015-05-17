# Getting-Cleaning-Data-Project

==================================================================
run_analysis.R: 

This script is for the course project for the Getting and Cleaning 
Data course (Coursera). It uses the Human Activity Recognition 
Using Smartphones Dataset Version 1.0.
(Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.)

==================================================================

Assumption: Within your working directory, you must have a subdirectory called
"UCI HAR Dataset". All of the files listed below must be present in this subdirectory.    

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the activity labels with their activity name.

- 'train/X_train.txt': Training set. Each row is a feature vector for one window sample.

- 'train/y_train.txt': Each row identifies the activity for each window sample. Its range is from 1 to 6.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/X_test.txt': Test set. Each row is a feature vector for one window sample. 

- 'test/y_test.txt': Each row identifies the activity for each window sample. Its range is from 1 to 6.

- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


SCRIPT
==========

run_analysis.R performs the following tasks: 
1. Reads all necessary files from UCI HAR Datasets and subdirectories
2. Extracts only the variables corresponding to mean and std calculations on the features
3. Combines the train and test data sets into one data set containing the entire population 
4. Adds meaningful column names and activity labels
5. Summarizes the results as the mean of each feature, grouped by subject_id and activity
6. Renames the columns to indicate that they represent the mean of each feature
7. Writes the summary table as a text file called summary_results.txt within UCI HAR Datasets directory

Usage: 
> source("run_analysis.R") 

Output: 
"UCI HAR Dataset/summary_results.txt". To read this file into R, use 
mydata <- read.table("UCI HAR Dataset/summary_results.txt", header=TRUE)



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
