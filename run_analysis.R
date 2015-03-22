get_results <- function() { # this function performs r code for Getting and Cleaning Data Course Project
  
  ## read text files X_test, y_test, subject_test, X_train, y_train, and subject_train into R
  X_test <- read.table("./test/X_test.txt")
  y_test <- read.table("./test/y_test.txt")
  subject_test <- read.table("./test/subject_test.txt")
  
  X_train <- read.table("./train/X_train.txt")
  y_train <- read.table("./train/y_train.txt")
  subject_train <- read.table("./train/subject_train.txt")

  
  ## rename column V1 to activity_number and subject_number in y_test, subject_test, y_train and subject_train
  y_test <- rename(y_test, c("V1" = "activity_number"))
  subject_test <- rename(subject_test, c("V1" = "subject_number"))

  y_train <- rename(y_train, c("V1" = "activity_number"))
  subject_train <- rename(subject_train, c("V1" = "subject_number"))
  
  
  ## combine X_, y_ and subject_test files together for both test and train data  
  test_data <- cbind(subject_test, y_test, X_test)
  train_data <- cbind(subject_train, y_train, X_train)  
  
  
  ## add new column to each dataframe to give source (test or train)
  test_data$source <- "test"
  train_data$source <- "train"
  
  
  ## combine test_data and train_data
  data_combined <- rbind(test_data, train_data)  
  
  
  ## create new dataframe with only columns that measure mean or standard deviation
  data_final <- data_combined[, c(1, 2, 3, 4, 5, 6, 7, 8, 43, 44, 45, 46, 47, 48, 83, 84, 85, 86, 87, 88, 123, 124, 125, 126, 127, 128, 163, 164, 165, 166, 167, 168, 203, 204, 216, 217, 229, 230, 242, 243, 255, 256, 268, 269, 270, 271, 272, 273, 296, 297, 298, 347, 348, 349, 350, 351, 352, 375, 376, 377, 426, 427, 428, 429, 430, 431, 454, 455, 456, 505, 506, 515, 518, 519, 528, 531, 532, 541, 544, 545, 554, 564)]
  
  
  ## add column with descriptive names for activities  
  activity_names_df <- data.frame(activity_number = 1:6, activity_names = c("walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying"))
  data_final <- join(data_final, activity_names_df) 
  
  
  ## add descriptive column names  
  data_final <- rename(data_final, c("V1" = "tBodyAcc-mean()-X", "V2" = "tBodyAcc-mean()-y", "V3" = "tBodyAcc-mean()-z", "V4" = "tBodyAcc-std()-X", "V5" = "tBodyAcc-std()-y", "V6" = "tBodyAcc-std()-z"))
  data_final <- rename(data_final, c("V41" = "tGravityAcc-mean()-X", "V42" = "tGravityAcc-mean()-y", "V43" = "tGravityAcc-mean()-z", "V44" = "tGravityAcc-std()-X", "V45" = "tGravityAcc-std()-y", "V46" = "tGravityAcc-std()-z"))
  data_final <- rename(data_final, c("V81" = "tBodyAccJerkAcc-mean()-X", "V82" = "tBodyAccJerkAcc-mean()-y", "V83" = "tBodyAccJerkAcc-mean()-z", "V84" = "tBodyAccJerkAcc-std()-X", "V85" = "tBodyAccJerkAcc-std()-y", "V86" = "tBodyAccJerkAcc-std()-z"))  
  data_final <- rename(data_final, c("V121" = "tBodyGyroAcc-mean()-X", "V122" = "tBodyGyroAcc-mean()-y", "V123" = "tBodyGyroAcc-mean()-z", "V124" = "tBodyGyroAcc-std()-X", "V125" = "tBodyGyroAcc-std()-y", "V126" = "tBodyGyroAcc-std()-z"))  
  data_final <- rename(data_final, c("V161" = "tBodyGyroJerk-mean()-X", "V162" = "tBodyGyroJerk-mean()-y", "V163" = "tBodyGyroJerk-mean()-z", "V164" = "tBodyGyroJerk-std()-X", "V165" = "tBodyGyroJerk-std()-y", "V166" = "tBodyGyroJerk-std()-z"))
  data_final <- rename(data_final, c("V201" = "tBodyAccMag-mean()", "V202" = "tBodyAccMag-std()"))
  data_final <- rename(data_final, c("V214" = "tGravityAccMag-mean()", "V215" = "tGravityAccMag-std()"))
  data_final <- rename(data_final, c("V227" = "tBodyAccJerkMag-mean()", "V228" = "tBodyAccJerkMag-std()"))
  data_final <- rename(data_final, c("V240" = "tBodyGyroMag-mean()", "V241" = "tBodyGyroMag-std()"))
  data_final <- rename(data_final, c("V253" = "tBodyGyroJerkMag-mean()", "V254" = "tBodyGyroJerkMag-std()"))
  data_final <- rename(data_final, c("V266" = "fBodyAcc-mean()-X", "V267" = "fBodyAcc-mean()-y", "V268" = "fBodyAcc-mean()-z", "V269" = "fBodyAcc-std()-X", "V270" = "fBodyAcc-std()-y", "V271" = "fBodyAcc-std()-z"))
  data_final <- rename(data_final, c("V294" = "fBodyAcc-meanFreq()-X", "V295" = "fBodyAcc-meanFreq()-y", "V296" = "fBodyAcc-meanFreq()-z"))
  data_final <- rename(data_final, c("V345" = "fBodyAccJerk-mean()-X", "V346" = "fBodyAccJerk-mean()-y", "V347" = "fBodyAccJerk-mean()-z", "V348" = "fBodyAccJerk-std()-X", "V349" = "fBodyAccJerk-std()-y", "V350" = "fBodyAccJerk-std()-z"))
  data_final <- rename(data_final, c("V373" = "fBodyAccJerk-meanFreq()-X", "V374" = "fBodyAccJerk-meanFreq()-y", "V375" = "fBodyAccJerk-meanFreq()-z"))
  data_final <- rename(data_final, c("V424" = "fBodyGyro-mean()-X", "V425" = "fBodyGyro-mean()-y", "V426" = "fBodyGyro-mean()-z", "V427" = "fBodyGyro-std()-X", "V428" = "fBodyGyro-std()-y", "V429" = "fBodyGyro-std()-z"))
  data_final <- rename(data_final, c("V452" = "fBodyGyro-meanFreq()-X", "V453" = "fBodyGyro-meanFreq()-y", "V454" = "fBodyGyro-meanFreq()-z"))
  data_final <- rename(data_final, c("V503" = "fBodyAccMag-mean()", "V504" = "fBodyAccMag-std()"))
  data_final <- rename(data_final, c("V513" = "fBodyAccMag-meanFreq()"))
  data_final <- rename(data_final, c("V516" = "fBodyAccJerkMag-mean()", "V517" = "fBodyAccJerkMag-std()"))
  data_final <- rename(data_final, c("V526" = "fBodyBodyAccJerkMag-meanFreq()"))
  data_final <- rename(data_final, c("V529" = "fBodyBodyGyroMag-mean()", "V530" = "fBodyBodyGyroMag-std()"))
  data_final <- rename(data_final, c("V539" = "fBodyBodyGyroMag-meanFreq()"))
  data_final <- rename(data_final, c("V542" = "fBodyBodyGyroJerkMag-mean()", "V543" = "fBodyBodyGyroJerkMag-std()"))
  data_final <- rename(data_final, c("V552" = "fBodyBodyGyroJerkMag-meanFreq()"))
  
  
  ##  Melt data_final to create tall table to then calculate means
  melted_data_final <- melt(data_final, id = c("subject_number", "activity_names"), measure.vars = c("tBodyAcc-mean()-X", "tBodyAcc-mean()-y", "tBodyAcc-mean()-z", "tBodyAcc-std()-X", "tBodyAcc-std()-y", "tBodyAcc-std()-z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-y", "tGravityAcc-mean()-z", "tGravityAcc-std()-X", 
                                                                                          "tGravityAcc-std()-y", "tGravityAcc-std()-z", "tBodyAccJerkAcc-mean()-X", "tBodyAccJerkAcc-mean()-y", "tBodyAccJerkAcc-mean()-z", "tBodyAccJerkAcc-std()-X", "tBodyAccJerkAcc-std()-y", "tBodyAccJerkAcc-std()-z", 
                                                                                          "tBodyGyroAcc-mean()-X", "tBodyGyroAcc-mean()-y", "tBodyGyroAcc-mean()-z", "tBodyGyroAcc-std()-X", "tBodyGyroAcc-std()-y", "tBodyGyroAcc-std()-z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-y", "tBodyGyroJerk-mean()-z", 
                                                                                          "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-y", "tBodyGyroJerk-std()-z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", 
                                                                                          "tBodyGyroMag-mean()", "V241" = "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-y", "fBodyAcc-mean()-z", "fBodyAcc-std()-X", "fBodyAcc-std()-y", "fBodyAcc-std()-z", 
                                                                                          "fBodyAcc-meanFreq()-X", "fBodyAcc-meanFreq()-y", "fBodyAcc-meanFreq()-z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-y", "fBodyAccJerk-mean()-z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-y", "fBodyAccJerk-std()-z", 
                                                                                          "fBodyAccJerk-meanFreq()-X", "fBodyAccJerk-meanFreq()-y", "fBodyAccJerk-meanFreq()-z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-y", "fBodyGyro-mean()-z", "fBodyGyro-std()-X", "fBodyGyro-std()-y", "fBodyGyro-std()-z", 
                                                                                          "fBodyGyro-meanFreq()-X", "fBodyGyro-meanFreq()-y", "fBodyGyro-meanFreq()-z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyAccMag-meanFreq()", "fBodyAccJerkMag-mean()", "fBodyAccJerkMag-std()", "fBodyBodyAccJerkMag-meanFreq()", 
                                                                                          "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroMag-meanFreq()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()", "fBodyBodyGyroJerkMag-meanFreq()"))

  
  ## cast melted_data_final to calculate means of all columns
  cast_melted_data_final <- dcast(melted_data_final, subject_number + activity_names ~ variable, mean)
  
  print(head(cast_melted_data_final))


  write.table(cast_melted_data_final, "D:/Coursera/Cleaning Data/Course Project/course project.txt", row.names = FALSE)
  
  
}
  
