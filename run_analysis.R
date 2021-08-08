#downloading data
library(reshape2)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
directory <- "./data"
if(!file.exists(directory)){
        dir.create(directory)
        download.file(fileUrl, destfile = "./data/Dataset.zip", method = "curl" )
}
list.files(directory)

#unzip the downloaded file
extractedDir <- "./zipdata"
if(!file.exists(extractedDir)){
        dir.create(extractedDir)
        unzip("./data/Dataset.zip", exdir = extractedDir)
}

list.files(extractedDir)
zipDataPath <- paste(extractedDir, "/", "UCI HAR Dataset", sep = "")
list.files(zipDataPath)

#1 Merge the training and the test sets to create one data set.
#test data set
testX <- read.table(paste(zipDataPath, "/", "test/X_test.txt", sep = ""))
testY <- read.table(paste(zipDataPath, "/", "test/Y_test.txt", sep = ""))
testS <- read.table(paste(zipDataPath, "/", "test/subject_test.txt", sep = ""))

# train data set
trainX <- read.table(paste(zipDataPath, "/", "train/X_train.txt", sep = ""))
trainY <- read.table(paste(zipDataPath, "/", "train/Y_train.txt", sep = ""))
trainS <- read.table(paste(zipDataPath, "/", "train/subject_train.txt", sep = ""))

# bind test and train data sets
dataX <- rbind(testX, trainX)
dataY <- rbind(testY, trainY)
dataS <- rbind(testS, trainS)

#2 Extracts only the measurements on the mean and standard deviation for each measurement.
#feature information
features <- read.table(paste(zipDataPath, "/", "features.txt", sep = ""))
selectedColsIndexes <- grep("-(mean|std).*", as.character(features[,2]))
selectedCols <- features[selectedColsIndexes, 2]

#3 Use descriptive activity names to name the activities in the data set
selectedCols <- gsub("-mean", "Mean", selectedCols)
selectedCols <- gsub("-std", "Std", selectedCols)
selectedCols <- gsub("[-()]", "", selectedCols)
#print(selectedCols)

#4 Labels the data set with descriptive variable names. 
dataX <- dataX[selectedColsIndexes]
dataXYS <- cbind(dataS, dataY, dataX)

#naming columns
colnames(dataXYS) <- c("Subject", "Activity", selectedCols)

#5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#activity labels

activityLabels <- read.table(paste(zipDataPath, "/", "activity_labels.txt", sep = ""))
activityLabels[, 2] <- as.character(activityLabels[, 2])

dataXYS$Activity <- factor(dataXYS$Activity, levels = activityLabels[,1], labels = activityLabels[,2])
dataXYS$Subject <- as.factor(dataXYS$Subject)

# generating tidy data

meltedData <- melt(dataXYS, id = c("Subject", "Activity"))
tidyData <- dcast(meltedData, Subject + Activity ~ variable, mean)

write.table(tidyData, "./tidyData.txt", row.names = FALSE, quote = FALSE)
