library(dplyr)

#load data from three files 
load_data <- function(dataset, column_labels) {
  subject <- read.table(paste0(relpath, dataset, '/', 'subject_', dataset, '.txt'), col.names= c('subject'))
  y <- read.table(paste0(relpath, dataset, '/', 'y_', dataset, '.txt'), col.names = c('activity'))
  x <- read.table(paste0(relpath, dataset, '/', 'X_', dataset, '.txt'), col.names = column_labels)
  
  #select only variables that have mean and std in them
  x <- select(x, matches("mean|std")) 
  
  cbind(subject, y, x)
}


#download and unzip source data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              mode="wb", "dataset.zip")

unzip("dataset.zip")

# path inside zip file 
relpath = 'UCI HAR Dataset/'

# load feature names 
column_labels <- read.table(paste0(relpath, "features.txt"), stringsAsFactors = FALSE)$V2
# cleanup columnnames, remove ( )  - and ,  
column_labels <- tolower(gsub('[()-,]','',column_labels))

# load activity names
activity_names <- read.table(paste0(relpath, "activity_labels.txt"), row.names = 1)

#load test and training data
test <- load_data('test', column_labels)
train <- load_data('train', column_labels)

#merge datasets into one
fulldataset <- rbind(train, test)

# remove intermediate results from memory
rm("test", "train")
  
#resolve full activity names
fulldataset <- fulldataset %>% mutate(activity = activity_names[activity,])
  
#summarize each column
by_activity_subject <- fulldataset %>% group_by(activity, subject)
average_table <- by_activity_subject %>% summarise_each(funs(mean))
  
#write to file
write.table(average_table, file="out.txt", row.names= FALSE)
