==================================================================
DATA MANIPULATIONS
==================================================================

Step 1. Create data tables with the following files: "features.txt", "activity_labels.txt", "y_train.txt", "y_test.txt", "X_train.txt", "X_test.txt", "subject_train.txt", "subject_test.txt"

Step 2. For the number observations in "X_train.txt" and "X_test.txt", add "features.txt" as variables (column names).

Step 3. Add the activity names found in "activity_labels.txt" to the Activities tables contained in "y_train.txt" and "y_test.txt".

Step 4. Perform column binding for the train and test data tables with their respective Subjects and Activities data tables.

Step 5. Bind all the rows from the Test and the Train data tables.

Step 6. Keep only the mean and standard deviation measurements with the subject IDs and activities in the data table.

Step 7. Rename all the measurement variables with descriptive names.

Step 8. Calculate the mean of each measurement variable by subject and activity.

Step 9. Generate an output text file called "Galaxy_acc_test.txt".


==================================================================
LIST OF VARIABLES
==================================================================

 [1] "time_BodyAcc_mean_axialX"      "time_BodyAcc_mean_axialY"     
 [3] "time_BodyAcc_mean_axialZ"      "time_BodyAcc_std_axialX"      
 [5] "time_BodyAcc_std_axialY"       "time_BodyAcc_std_axialZ"      
 [7] "time_GravityAcc_mean_axialX"   "time_GravityAcc_mean_axialY"  
 [9] "time_GravityAcc_mean_axialZ"   "time_GravityAcc_std_axialX"   
[11] "time_GravityAcc_std_axialY"    "time_GravityAcc_std_axialZ"   
[13] "time_BodyAccJerk_mean_axialX"  "time_BodyAccJerk_mean_axialY" 
[15] "time_BodyAccJerk_mean_axialZ"  "time_BodyAccJerk_std_axialX"  
[17] "time_BodyAccJerk_std_axialY"   "time_BodyAccJerk_std_axialZ"  
[19] "time_BodyGyro_mean_axialX"     "time_BodyGyro_mean_axialY"    
[21] "time_BodyGyro_mean_axialZ"     "time_BodyGyro_std_axialX"     
[23] "time_BodyGyro_std_axialY"      "time_BodyGyro_std_axialZ"     
[25] "time_BodyGyroJerk_mean_axialX" "time_BodyGyroJerk_mean_axialY"
[27] "time_BodyGyroJerk_mean_axialZ" "time_BodyGyroJerk_std_axialX" 
[29] "time_BodyGyroJerk_std_axialY"  "time_BodyGyroJerk_std_axialZ" 
[31] "freq_BodyAcc_mean_axialX"      "freq_BodyAcc_mean_axialY"     
[33] "freq_BodyAcc_mean_axialZ"      "freq_BodyAcc_std_axialX"      
[35] "freq_BodyAcc_std_axialY"       "freq_BodyAcc_std_axialZ"      
[37] "freq_BodyAccJerk_mean_axialX"  "freq_BodyAccJerk_mean_axialY" 
[39] "freq_BodyAccJerk_mean_axialZ"  "freq_BodyAccJerk_std_axialX"  
[41] "freq_BodyAccJerk_std_axialY"   "freq_BodyAccJerk_std_axialZ"  
[43] "freq_BodyGyro_mean_axialX"     "freq_BodyGyro_mean_axialY"    
[45] "freq_BodyGyro_mean_axialZ"     "freq_BodyGyro_std_axialX"     
[47] "freq_BodyGyro_std_axialY"      "freq_BodyGyro_std_axialZ"     
[49] "activity"                      "subject"  

==================================================================
DEFINITION OF VARIABLES
==================================================================

The variables are measurements from the accelerometer and gyroscope 3-axial raw signals on the Samsung Galaxy 5 smartphone. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. 

Finally a Fast Fourier Transform (FFT frequency) was applied to some of these signals producing.

==================================================================
The variable names in the generated data set are built using the following names or accronyms:


time = Time domain signals
freq = Signals passing thorugh the Fast Fourier Transform frequency 

BodyAcc = Accelerometer body signals
BodyGyro = Gyroscope body signals
GravityAcc = Gravity acceleration signals

Jerk = Signal derived in time
mean = The average measurement
std = The standard deviation of the measurement

axialX = Signal measured by axial X
axialY = Signal measured by axial Y
axialZ = Signal measured by axial Z 