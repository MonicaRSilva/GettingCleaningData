xtest <- read.table("test/X_test.txt")
xtestid <- read.table("test/subject_test.txt")
xtest <- cbind(xtestid,xtest)

xtrain <- read.table("train/X_train.txt")
xtrainid <- read.table("train/subject_train.txt")
xtrain <- cbind(xtrainid,xtrain)

X <- rbind(xtest,xtrain)


ytest <- read.table("test/y_test.txt")
ytrain <- read.table("train/y_train.txt")
Y <- rbind(ytest,ytrain)

features <- read.table("features.txt")

names(X) <- c("subject_id",as.character(features$V2))

colnames <- grep(".*mean\\(\\)|.*std\\(\\)",features$V2)
colnames <- features[colnames,"V2"]
colnames <- c("subject_id",as.character(colnames))

X <- X[,colnames]


names(Y) <- c("activity_id")
data <- cbind(Y,X)

labels <- read.table("activity_labels.txt",col.names=c("activity_id","activity"))

tidyset <- merge(labels,data)
tidyset <- tidyset[,2:69]

tidyset <- ddply(tidyset,.(subject_id,activity),numcolwise(mean))

write.table(tidyset,"tidy_data_set.txt")

#tmp <- ddply(tidyset,.(xid,activity),numcolwise(mean))
