# Getting and Cleaning Data
# Course Project
# 
# Samsung dataset must exist in working directory

# load features and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

# load and combine training and test measured data
train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
data_x <- rbind(train_x,test_x)
colnames(data_x) <- c(as.character(features$V2))

# load and combine training and test id data
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
data_y = rbind(train_y,test_y)
activity <- factor(data_y$V1,labels=activity_labels$V2)

# load and combine training and test subject id
sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
sub_all <- rbind(sub_train,sub_test)
subject <- as.factor(sub_all$V1)

# combine activity id, subject id, and measured data
data_ms <- cbind(activity,subject,data_x)

# extract only mean and std measurement data
data <- subset(data_ms,select=grep("mean\\()|std\\()|activity|subject",colnames(data_ms)))

# create tidy dataset that summarizes measurements
# across activity and subject id
newdata <- aggregate(data[-(1:2)],data[1:2],mean, simplify=FALSE)

# save tidy dataset to file
write.table(data,file="./tidydata.txt")
