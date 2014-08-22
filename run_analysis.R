# download and unzip files; only needed once; uncomment if needs to run
# download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./UCI HAR Dataset.zip", mode="wb")
# unzip("./UCI HAR Dataset.zip")

# Merges the training and the test sets to create one data set.
variables <- read.table("./UCI HAR Dataset/features.txt", col.names = c("id", "name"))
activities <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("id", "name"))

data.training <- read.table("./UCI HAR Dataset/train/X_train.txt", row.names=NULL)
data.training$subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")$V1
data.training$activityid <- read.table("./UCI HAR Dataset/train/y_train.txt")$V1
row.names(data.training) <- paste0("training-", row.names(data.training))

data.test <- read.table("./UCI HAR Dataset/test/X_test.txt", row.names=NULL)
data.test$subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")$V1
data.test$activityid <- read.table("./UCI HAR Dataset/test/y_test.txt")$V1
row.names(data.test) <- paste0("test-", row.names(data.test))

data.all <- rbind(data.training, data.test)

# Extracts only the measurements on the mean and standard deviation for each measurement.
variables.selection <- grepl("mean|std", variables$name)
data.cleaned <- data.all[, c(variables.selection, TRUE, TRUE)]

# Uses descriptive activity names to name the activities in the data set
data.cleaned$activitydescription <- activities$name[match(data.cleaned$activityid, activities$id)]

# Appropriately labels the data set with descriptive variable names.
variables$variablename <- gsub("-|\\(|\\)", "", variables$name)
colnames(data.cleaned) <- c(variables$variablename[variables.selection], "subject", "activityid", "activitydescription")

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshape2)
data.tidy <- melt(data.cleaned, id.vars=c("subject", "activityid", "activitydescription"))
data.tidy$activityid <- NULL
data.tidy <- dcast(data.tidy, activitydescription + subject + variable ~ ., mean)
names(data.tidy) <- c("activity", "subject", "variable", "average")

write.table(data.tidy, "./tidy.txt", row.names = FALSE)

