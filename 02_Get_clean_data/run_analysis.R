setwd("c:/users/sashap/dropbox/programming/r/00_projects/02_Get_clean_data")

## Creating a tidy data set for a data collected 
## from the accelerometers from the Samsung Galaxy S smartphone.

test.data <- read.table("./UCI HAR dataset/test/x_test.txt")
test.labels <- read.table("./UCI HAR dataset/test/y_test.txt")
labels <- read.table("./UCI HAR dataset/activity_labels.txt", colClasses = "character")
features <- t(read.table("./UCI HAR dataset/features.txt", colClasses = c("NULL", "character")))
colnames(test.data) <- features
