xtestid <- read.table("test/subject_test.txt") # Reading test subjects ids
xtest <- read.table("test/X_test.txt") # Reading subject test subjects data
xtest <- cbind(xtestid,xtest) # Binding ids and data


xtrainid <- read.table("train/subject_train.txt") #Reading train subjects ids
xtrain <- read.table("train/X_train.txt") # Reading train subjects data
xtrain <- cbind(xtrainid,xtrain) # Binding ids and data

X <- rbind(xtest,xtrain) # Merging test and train data

# Reading test and train labels
ytest <- read.table("test/y_test.txt")
ytrain <- read.table("train/y_train.txt")
Y <- rbind(ytest,ytrain) # Merging test and train labels

# Naming columns of subject data table using the features.txt
features <- read.table("features.txt") 
names(X) <- c("subject_id",as.character(features$V2))

# Selecting only columns starting with "mean" or "std"
colnames <- grep(".*mean\\(\\)|.*std\\(\\)",features$V2)
colnames <- features[colnames,"V2"]
colnames <- c("subject_id",as.character(colnames))
X <- X[,colnames]

# Merging subject and label data
names(Y) <- c("activity_id")
data <- cbind(Y,X)

# Reading file with descriptive values for labels
labels <- read.table("activity_labels.txt",col.names=c("activity_id","activity"))

# Merging descriptive values for labels and data to create a tidy data set
tidyset <- merge(labels,data)
tidyset <- tidyset[,!names(tidyset) %in% c("activity_id")] #removing column "activity_id"
# Is there a simpler way?

# Loading plyr to use ddply
library(plyr)
tidyset <- ddply(tidyset,.(subject_id,activity),numcolwise(mean))

write.table(tidyset,"tidy_data_set.txt",sep=",",row.names=FALSE) #write new tidy set in a txt file