###Coursera Course
###Getting and Cleaning Data (003)
###May 2014

###I. Introduction

As part of the course project, we are asked to take the original Human Activity Recognition Using Smartphones Dataset from the Smartlab - Non Linear Complex Systems Laboratory, Genoa, Italy, and transform it into a tidy dataset for use in subsequent calculations. This dataset consists of 561 measurements of the statistics various accelerations and velocities from 30 individuals ages 19-48 performing one of six different activities. The goal of the transformation is to reduce this set to only consider the average of the means and standard deviations of the measurements for each individual in each activity.

###II. Variables

In addition to the features described in the file "UCI HAR Dataset/features.txt", this project used the following:

features:            string description of each measured feature

activity_labels:     descriptive labels of each activity

train_x:             measurements from the training set

train_y:             activity (in numeric form) generating measurements in train_x

test_x:              measurements from the test set

test_y:              activity (in numeric form) generating measurements in test_x

data_x:              combined measurements from training_x and test_x

data_y:              combined activity (in numeric form) from training_y and test_y

activity:            factor list of activities in descriptive form

sub_train:           subject id for each measurement in training_x, training_y

sub_test:            subject id for each measurement in test_x, test_y

sub_all:             subject id for each measurement in data_x, data_y

subject:             factor list of subject id for data_x, data_y

data_ms:             data frame of all 10299 observations of 561 measurements 

data:                data frame of 10299 observations of mean() and std() measurements (68 in total)

newdata:             data frame of means of the average of each variable for each subject id and activity

###III. Transformations

The script loads and combines the training and test sets (using the R rbind function) and assigns appropriate column names to them (using the R colnames function) in one large data frame "data_x". Factors are created from the subject and activity ids (using the R as.factor function) and are prepended to "data_x" to create data frame "data_ms" using the R cbind function. A subset of this dataframe which extracts all mean and std measurements is created in the dataframe "data" using the R subset function. The R aggregate function is then used to calculate the averages for each measurement for each subject and activity and saved in a new data frame "newdata". This dataframe is written to file under the name "tidydata.txt"



