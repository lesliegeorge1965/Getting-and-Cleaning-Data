# Getting-and-Cleaning-Data
Repo for Course Project For Coursera Course Getting and Cleaning Data


This is how my R script works with each Part corresponding to the 5 steps/requirements in the Courese Project assignment.  For a more detailed description please see comments in the R code.

Part 1:
1.)	Combine X_train  (raw data), Y_train (activity measured) and subject_train (subject/volunteer) into one table.
2.)	Make a corresponding  table from the test data. 
3.)	Combine the two tables into one.  Add field called source to identify if data is from train or test.

Part 2:
Create new table from table in Part 1 that only has Activity, Subject, Source and all fields related to means and standard deviations for each signal for each measurement.

Part 3:
In table from Part 2 add field to give text description of activity from numeric activity code.

Part 4:
In table from Part 3 create new descriptive variable names and rename each column/variable.

Part 5:
In table from Part 4 create new summarized table(tidy) with the average of each of the means and standard deviations for each measurement by activity and subject.

CODE BOOK

OVERVIEW
The final tidy data set has 180 rows (30 subjects X 6 activities) and 81 columns.  The columns are subject_number, activity_names and the 79 measures that involve mean or standard deviation.

VARIABLES/COLUMNS
subject_number: Numeric value from 1 to 30.  Represents which of the 30 volunteers and activity is being measured.

activity_names: Text value that describes the six different activities being performed and measured.  The values are: walking, walking upstairs, walking downstairs, laying, sitting and standing.

Measurements involving mean or standard deviation (note these are self-explanatory and involve x, y or z axis (or none) and 
whether it is measuring mean or standard deviation.  The numeric value represents the original number of the data before stripping out only the measures involving mean or standard deviation.

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
81 tBodyAccJerk-mean()-X
82 tBodyAccJerk-mean()-Y
83 tBodyAccJerk-mean()-Z
84 tBodyAccJerk-std()-X
85 tBodyAccJerk-std()-Y
86 tBodyAccJerk-std()-Z
121 tBodyGyro-mean()-X
122 tBodyGyro-mean()-Y
123 tBodyGyro-mean()-Z
124 tBodyGyro-std()-X
125 tBodyGyro-std()-Y
126 tBodyGyro-std()-Z
161 tBodyGyroJerk-mean()-X
162 tBodyGyroJerk-mean()-Y
163 tBodyGyroJerk-mean()-Z
164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
253 tBodyGyroJerkMag-mean()
254 tBodyGyroJerkMag-std()
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
294 fBodyAcc-meanFreq()-X
295 fBodyAcc-meanFreq()-Y
296 fBodyAcc-meanFreq()-Z
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
373 fBodyAccJerk-meanFreq()-X
374 fBodyAccJerk-meanFreq()-Y
375 fBodyAccJerk-meanFreq()-Z
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
452 fBodyGyro-meanFreq()-X
453 fBodyGyro-meanFreq()-Y
454 fBodyGyro-meanFreq()-Z
503 fBodyAccMag-mean()
504 fBodyAccMag-std()
513 fBodyAccMag-meanFreq()
516 fBodyBodyAccJerkMag-mean()
517 fBodyBodyAccJerkMag-std()
526 fBodyBodyAccJerkMag-meanFreq()
529 fBodyBodyGyroMag-mean()
530 fBodyBodyGyroMag-std()
539 fBodyBodyGyroMag-meanFreq()
542 fBodyBodyGyroJerkMag-mean()
543 fBodyBodyGyroJerkMag-std()
552 fBodyBodyGyroJerkMag-meanFreq()

