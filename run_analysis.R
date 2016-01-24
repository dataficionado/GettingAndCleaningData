run_analysis <- function(){

        ## Load libraries and set working directory
        
        library(dplyr)
        library(tidyr)
        
        
        ## Fetch variables for data
        vars <- (read.table("./UCI HAR Dataset/features.txt")[,2])
        activnames <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("label","activity"))
        
        ## Fetch data observations
        train.labels <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names="label")
        test.labels <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names="label")
        
        train.set <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names=vars)
        test.set <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names=vars)
        
        train.subs <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names="subject")
        test.subs <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names="subject")
        
        ## Build activity data tables
        train.activ <- merge(train.labels,activnames, by="label", sort=FALSE)
        test.activ <- merge(test.labels,activnames, by="label", sort=FALSE)
        
        ## Build complete test and train data tables
        train.data <- cbind(train.set,train.activ)
        train.data <- cbind(train.data,train.subs)
        test.data <- cbind(test.set,test.activ)
        test.data <- cbind(test.data,test.subs)
        
        ## Clear memory
        rm(list= ls()[!(ls() %in% c('run_analysis','train.data','test.data'))])
        
        ## Merge train and test
        mydata <- bind_rows(train.data,test.data)

        ## Select mean and standard deviation measurements
        leandata <- select(mydata,matches("mean\\...|std\\...|subject|activity"))
        leandata <- select(leandata,matches("X$|Y$|Z$|subject|activity"))

        ## Convert to descriptive variable names
        names(leandata) <- sub("^t", "time_", names(leandata))
        names(leandata) <- sub("^f", "freq_", names(leandata))
        names(leandata) <- sub("\\.", "_", names(leandata))
        names(leandata) <- sub("\\.\\.\\.", "_axial", names(leandata))
        
        ## Create tidy data set with mean by subject and activity
        datatbl <- tbl_df(leandata)
        by_subact <- group_by(datatbl,subject,activity)
        summary <- summarise_each(by_subact,funs(mean))
        
        
        ## Generate output file
        write.table(summary, file="./Galaxy_acc_test.txt",row.names=FALSE)
}