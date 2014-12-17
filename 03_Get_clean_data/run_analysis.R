setwd("03_Get_clean_data/Project")


## Read activity names
act.names <- read.table("UCI HAR Dataset/activity_labels.txt")
names(act.names) <- c("number", "activity.name")


## Read var names
var.names <- read.table("UCI HAR Dataset/features.txt")


## Load names 
####################
## TEST data
test.rows <- read.table("UCI HAR Dataset/test/Y_test.txt")
test.rows[,1] <- as.factor(test.rows[,1])
names(test.rows) <- c("activity")
test.rows <- within(test.rows, activity <- factor(activity, labels = act.names$activity.name))

## TRAIN data
train.rows <- read.table("UCI HAR Dataset/train/Y_train.txt")
train.rows[,1] <- as.factor(train.rows[,1])
names(train.rows) <- c("activity")
train.rows <- within(train.rows, activity <- factor(activity, labels = act.names$activity.name))


## Load subjects
#################
## TEST data
test.subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(test.subjects) <- c("subject.ID")

## TRAIN data
train.subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(train.subjects) <- c("subject.ID")


## Load data
##############
## TEST data
test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = var.names[,2] )

## TRAIN data
train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = var.names[,2] )


## merge by data set subjects, activities, data
#################################################
## TEST data
test <- cbind(test.subjects, test.rows, test)

## TRAIN data
train <- cbind(train.subjects, train.rows, train)

## merge TEST and TRAIN
#########################
data <- merge(test, train, all = TRUE)

## Extract measurements on the mean and standard deviation
library(gdata)
col.names <- c("subject.ID", "activity", matchcols(data, with=c("mean"), method="or"), matchcols(data, with=c("std"), method="or"))
col.names.short <- c(matchcols(data, with=c("mean"), method="or"), matchcols(data, with=c("std"), method="or"))
tidy.data <- data[,col.names]

## Create an empty data frame for averages
factor <- unique(with(tidy.data, interaction(subject.ID, activity))) ## All combinations of sibject ID and activity

tidy.data.averages <- as.data.frame(matrix(nrow=length(factor), ncol = length(col.names.short), dimnames = list(factor, col.names.short)))

## Create a data set with averages of each variable for each activity and each subject
for (i in 1:length(col.names.short)) {
        tidy.data.averages[,i] <- tapply(tidy.data[,i+2], interaction(tidy.data$activity, tidy.data$subject.ID), mean)
        
}

## Since for some reason we are asked not to use row names, I create two additional columns for Subject ID and Activity for the data frame with averages
row.names <- as.character(factor)
row.names <- strsplit(row.names, ".", fixed = TRUE)
sub.ID <- as.data.frame(do.call(rbind,row.names))
names(sub.ID) <- c("subject.ID","activity")
tidy.data.averages <- cbind(sub.ID, tidy.data.averages)


## Write the dataset to a txt
write.table(tidy.data.averages, file = "tidy_data_averages.txt", row.names = FALSE)


        
        
        