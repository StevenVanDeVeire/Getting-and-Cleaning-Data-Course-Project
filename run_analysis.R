##Reading the features. Selecting the second column to only keep the labels
features <- read.csv("features.txt", sep = "", header = FALSE)[2]

##Reading the activities labels
activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)

#Reading set data for both test and training and binding them together
setTest <- read.csv("test/X_test.txt", sep = "", header = FALSE)
setTraining <- read.csv("train/X_train.txt", sep = "", header = FALSE)
sets <- rbind(setTest,setTraining) 

##Reading move data for both test and training and binding them together
movesTest <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
movesTraining <- read.csv("train/Y_train.txt", sep = "", header = FALSE)
moves <- rbind(movesTest, movesTraining)

##Reading subject data for both test and training and binding them together
subjectTest <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
subjectTraining <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
subjects <- rbind(subjectTest, subjectTraining)

##Assigning the features to the name of the column of the set data
names(sets) <- features[,1]

##Selecting only those columns with "std" (Standard Deviation) or "mean" in the description
sets <- sets[ grepl("std\\(\\)|mean\\(\\)", names(sets), ignore.case = TRUE) ]

##Bind the subject, moves and sets together
data <- cbind(subjects, moves, sets)

##Assigning a descriptive name to the first two columns
names(data)[1:2] <- c("subject", "activity")

##Giving the values in the activity column the appropriate label
data$activity <- as.factor(data$activity)
levels(data$activity) <- activities$V2

##Install reshape 2 package
##install.packages("reshape2")
library(reshape2)
##Melt the data
meltData <- melt(data, c(1,2), measure.vars = -c(1,2))
##Cast to a tidy dataset
tidyData <- dcast(meltData, subject + activity ~ variable,mean)