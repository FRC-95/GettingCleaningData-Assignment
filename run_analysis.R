library(dplyr)

## This script runs inside UCI HAR Dataset Folder
## setwd("~/.../UCI HAR Dataset")

## 1. Reading datasets and labels (complete activity and subject,
## and only mean and std of feature dataset)

activity.train <- read.table("train/y_train.txt", header = F)
activity.test <- read.table("test/y_test.txt", header = F)
activity.label <- read.table("activity_labels.txt", header = F)

subject.train <- read.table("train/subject_train.txt", header = F)
subject.test <- read.table("test/subject_test.txt", header = F)

# 2. Get feature labels
features.names <- read.table("features.txt", header = F)
features.mean.std <-grep(".*mean.*|.*std.*", features.names$V2)

# 3. Read only wanted features
features.train <- read.table("train/X_train.txt", header = F)[features.mean.std]
features.test <- read.table("test/X_test.txt", header = F)[features.mean.std]

## 4. Merge train and test

activity.data <- rbind(activity.train, activity.test)
features.data <- rbind(features.train, features.test)
subject.data <- rbind(subject.train, subject.test)

## 5. Set levels, labels and colnames

activity.data$V1 <- factor(activity.data$V1,
                           levels = activity.label$V1,
                           labels = activity.label$V2)
colnames(activity.data) <- "activity"
colnames(subject.data) <- "subject"
colnames(features.data) <- features.names$V2[features.mean.std]

## 6. Merge in one data set

data <- cbind(subject.data, activity.data, features.data)

## 7. Independent tidy data organised by means

data.means <- data %>% group_by(subject,activity) %>% summarize_all(mean)


