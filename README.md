# Getting-and-Cleaning-Data-Course-Project
To start, all necessary data are read. The <em>read.csv</em> function is used for this.

First the features are read. Only the second column is stored, as the first column only contains an unnecessary rownumber.

```R
##Reading the features. Selecting the second column to only keep the labels
features <- read.csv("features.txt", sep = "", header = FALSE)[2]
```

Then the activity labels are read. Nothing fancy here.

```R
##Reading the activities labels
activities <- read.csv("activity_labels.txt", sep = "", header = FALSE)
```

Then the sets are read. First the test sets (from X_test.txt), then the training sets (from X_train.txt). Both datasets are combined using the <em>rbind</em> command.

```R
#Reading set data for both test and training and binding them together
setTest <- read.csv("test/X_test.txt", sep = "", header = FALSE)
setTraining <- read.csv("train/X_train.txt", sep = "", header = FALSE)
sets <- rbind(setTest,setTraining) 
```

Same trick for the moves. Reading from Y_test.txt and Y_test.txt and binding them together.

```R
##Reading move data for both test and training and binding them together
movesTest <- read.csv("test/Y_test.txt", sep = "", header = FALSE)
movesTraining <- read.csv("train/Y_train.txt", sep = "", header = FALSE)
moves <- rbind(movesTest, movesTraining)
```

And finally for the subjects.

```R
##Reading subject data for both test and training and binding them together
subjectTest <- read.csv("test/subject_test.txt", sep = "", header = FALSE)
subjectTraining <- read.csv("train/subject_train.txt", sep = "", header = FALSE)
subjects <- rbind(subjectTest, subjectTraining)
```

To give the columns in the <em>sets</em> dataset an understandable name, the lables in the <em>features</em> vector are assigned to the names.

```R
##Assigning the features to the name of the column of the set data
names(sets) <- features[,1]
```

As only columns regarding mean and standard deviation will be used, these are selected using the <em>grepl</em> command. Note that also a check is done on brackets after <em>std</em> and <em>mean</em> as otherwise variables with name like <em>meanfrequency</em> would also be returned.

```R
##Selecting only those columns with "std" (Standard Deviation) or "mean" in the description
sets <- sets[ grepl("std\\(\\)|mean\\(\\)", names(sets), ignore.case = TRUE) ]
```

The dataset <em>subjects</em>, <em>moves</em> and <em>sets</em> are combined using the <em>cbind</em> command.

```R
##Bind the subject, moves and sets together
data <- cbind(subjects, moves, sets)
```

Giving the first two columns a more descriptive name.

```R
##Assigning a descriptive name to the first two columns
names(data)[1:2] <- c("subject", "activity")
```

Assigning labels to the values in the <em>activity</em> column. First the values are converted to factors using the <em>as.factor</em> command. Then the levels are taken from the second column of the <em>activities</em> vector.

```R
##Giving the values in the activity column the appropriate label
data$activity <- as.factor(data$activity)
levels(data$activity) <- activities$V2
```

To make the dataset tidy, the <em>reshap2</em> package is used. First the <em>melt</em> command is used to create a molten dataset. This dataset has the following form

| subject | activity | variable          | value      |
| --------|----------|-------------------|-----------:|
| 2       | STANDING | tBodyAcc-mean()-X | 0.25717778 |
| 2       | STANDING | tBodyAcc-mean()-X | 0.28602671 |
| 2       | STANDING | tBodyAcc-mean()-X | 0.27548482 |

Then the <em>dcast</em> command is used to create a tidy dataset. For each combination of <em>subject</em> and <em>activity</em>, values each of the 30 variables is collected and the mean is calculted. This results in a dataset of the following form (not all columns are shown).

| subject | activity | tBodyAcc-mean()-X | tBodyAcc-mean()-Y | tBodyAcc-mean()-Z |
| --------|----------|------------------:|------------------:|------------------:|
| 1       | STANDING | 0.2773308         | 0.25717778        | -0.11114810       |
| 1       | LAYING   | 0.2554617         | 0.28602671        | -0.09730200       |
| 1       | WALKING  | 0.2891883         | 0.27548482        | -0.10756619       |

```R
##Install reshape 2 package
##install.packages("reshape2")
library(reshape2)
##Melt the data
meltData <- melt(data, c(1,2), measure.vars = -c(1,2))
##Cast to a tidy dataset
tidyData <- dcast(meltData, subject + activity ~ variable,mean)```
