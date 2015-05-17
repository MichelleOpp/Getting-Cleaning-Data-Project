## Read all input data files. Stop with an error if any file doesn't exist. 

if (file.exists("UCI HAR Dataset/activity_labels.txt")){
   activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", 
                                 col.names = c("activity_id", "activity"))
} else stop("File 'UCI HAR Dataset/activity_labels.txt' does not exist.")


if (file.exists("UCI HAR Dataset/features.txt")){
   features <- read.table("UCI HAR Dataset/features.txt", 
                           col.names = c("feature_id", "feature"))
} else stop("File 'UCI HAR Dataset/features.txt' does not exist.")


if (file.exists("UCI HAR Dataset/train/X_train.txt")){
   x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
} else stop("File 'UCI HAR Dataset/train/X_train.txt' does not exist.")


if (file.exists("UCI HAR Dataset/train/y_train.txt")){
   y_train <- read.table("UCI HAR Dataset/train/y_train.txt",
                          col.names = "activity_id")
} else stop("File 'UCI HAR Dataset/train/y_train.txt' does not exist.")


if (file.exists("UCI HAR Dataset/train/subject_train.txt")){
   subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
                                col.names = "subject_id")
} else stop("File 'UCI HAR Dataset/train/subject_train.txt' does not exist.")


if (file.exists("UCI HAR Dataset/test/X_test.txt")){
   x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
} else stop("File 'UCI HAR Dataset/test/X_test.txt' does not exist.")


if (file.exists("UCI HAR Dataset/test/y_test.txt")){
   y_test <- read.table("UCI HAR Dataset/test/y_test.txt",
                         col.names = "activity_id")
} else stop("File 'UCI HAR Dataset/test/y_test.txt' does not exist.")


if (file.exists("UCI HAR Dataset/test/subject_test.txt")){
   subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
                               col.names = "subject_id")
} else stop("File 'UCI HAR Dataset/test/subject_test.txt' does not exist.")


## Determine which features correspond to mean and std calculations. 
## There are also some calculations for meanFreq so we need to exclude those.

keep_features <- (!(grepl("meanFreq()", features$feature)) & 
                  (grepl("mean()", features$feature) |
                   grepl("std()", features$feature)))
                   
## Subset the x_train and x_test tables to keep only the desired features

x_train        <- x_train[,keep_features]
x_test         <- x_test[,keep_features]

## Add meaningful variables names, but I don't like parentheses or dashes in 
## variables names so I'll remove them before assigning the names to x_train and x_test

varnames <- features[keep_features, "feature"]
varnames <- gsub("\\(\\)","",varnames)
varnames <- gsub("-","_", varnames)

names(x_train) <- varnames
names(x_test)  <- varnames


## Combine the train and test tables with their respective subject and activity ID tables
train <- cbind(subject_train, y_train, x_train)
test  <- cbind(subject_test, y_test, x_test)

## Combine the train and test tables together. They have the same sets of columns so use rbind
all_results <- rbind(train, test)

## Add the activity labels and drop the activity_id
all_results <- merge(activity_labels, all_results, by.x="activity_id", by.y="activity_id", all=TRUE)
all_results$activity_id <- NULL


## Create a summary table that takes the mean of all feature columns, grouped by activity and subject ID 
summary_results <- aggregate(all_results[,3:ncol(all_results)],
                             list(subject_id = all_results$subject_id, activity = all_results$activity),
                             mean)

## Change the column names to indicate that they represent means of the features
names(summary_results)[3:ncol(summary_results)] <- paste("mean_of_", names(summary_results)[3:ncol(summary_results)], sep="")

## Write the summary table to a text file                             
write.table(summary_results, "UCI HAR Dataset/summary_results.txt", row.names=FALSE)                             
