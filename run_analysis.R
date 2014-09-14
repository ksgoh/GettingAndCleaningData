##
## Download and unzip the source zip file.
##
if(!file.exists("./data")) {dir.create("./data")}
file<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file (file, destfile="./data/UCI HAR Dataset.zip", method="curl")
unzip("./data/UCI HAR Dataset.zip") 

##
## Prepare names of activities and column headers of measurements.
##    1. Read names of activities from "activity_labels.txt".
##    2. Read column headers of measurements from "features.txt".
##
activityLabels    = read.table ("./UCI HAR Dataset/activity_labels.txt")
measurementLabels = read.table ("./UCI HAR Dataset/features.txt")

##
## Process the test set
##    1. Read the Subjects in the test set
##    2. Read the Activities of the Subjects in the test set
##    3. Read the Measurements of each Subject/Activities in the test set
##    4. Label the 3 test data sets with descriptive variabe/column names.
##
testSubject     = read.table ("./UCI HAR Dataset/test/subject_test.txt")
testActivity    = read.table ("./UCI HAR Dataset/test/y_test.txt")
testMeasurement = read.table ("./UCI HAR Dataset/test/X_test.txt")
colnames(testSubject)    <- "Subject"
colnames(testActivity)   <- "Activity"
colnames(testMeasurement)<- unlist (measurementLabels$V2)

##
## Process the training set similarly
##    1. Read the Subjects in the training set
##    2. Read the Activities of the Subjects in the training set
##    3. Read the Measurements of each Subject/Activities in the training set
##    4. Label the 3 training data sets with descriptive variabe/column names.
##
trainSubject     = read.table ("./UCI HAR Dataset/train/subject_train.txt")
trainActivity    = read.table ("./UCI HAR Dataset/train/y_train.txt")
trainMeasurement = read.table ("./UCI HAR Dataset/train/X_train.txt")
colnames(trainSubject)    <- "Subject"
colnames(trainActivity)   <- "Activity"
colnames(trainMeasurement)<- unlist (measurementLabels$V2)

##
## Merges the training and the test sets to create one data set each for
## Subject, Activity and Measurement
##
dataSubject     <- rbind (testSubject, trainSubject)
dataActivity    <- rbind (testActivity, trainActivity)
dataMeasurement <- rbind (testMeasurement, trainMeasurement)

##
##  Uses descriptive activity names to name the activities in the data set
##
dataActivity$Activity <- activityLabels[dataActivity$Activity,"V2"] 

##
##  Extract only measurements on the mean and standard deviation for each measurement
##  by extracting measurements that contain "mean()" or "std()" in their descriptions.
##  
dataMeasurement <- dataMeasurement[,grep("mean\\(\\)|std\\(\\)", measurementLabels$V2)]

##
## Creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject.
##
aggData <- aggregate(dataMeasurement, 
                     by = list(Subject=dataSubject$Subject,
                               Activity=dataActivity$Activity), FUN=mean)

##
## Output the tidy data set 
##
write.table(aggData, "./tidy data.txt", row.name=FALSE)

