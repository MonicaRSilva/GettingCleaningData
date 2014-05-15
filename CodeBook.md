# Code Book #

The raw data used for this project are described as follows:

>The features used for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
>
>These signals were used to estimate variables of the feature vector for each pattern:
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
> * tBodyAcc-XYZ
> * tGravityAcc-XYZ
> * tBodyAccJerk-XYZ
> * tBodyGyro-XYZ
> * tBodyGyroJerk-XYZ
> * tBodyAccMag
> * tGravityAccMag
> * tBodyAccJerkMag
> * tBodyGyroMag
> * tBodyGyroJerkMag
> * fBodyAcc-XYZ
> * fBodyAccJerk-XYZ
> * fBodyGyro-XYZ
> * fBodyAccMag
> * fBodyAccJerkMag
> * fBodyGyroMag
> * fBodyGyroJerkMag
>
>The set of variables that were estimated from these signals are:
>
> * mean(): Mean value
> * std(): Standard deviation

## Data columns ##
The run_analysis.R script uses this data to create a tidy data set with the average of each variable for each activity and each subject. 
This data set includes:
 * subject_id: subject identifier.
 * activity: descript name for activities instead of numbers.
 * all fields described in the block above.


The script:
 1. Merges the ids and measurements files of the test folder to create one data set.
 2. Merges the ids and measurements files of the train folder to create one data set.
 3. Merges both the test and trains data sets created above.
 4. Merges the data set created so far with the test and train labels.
 5. Selects only id, standard deviation and mean columns.
 6. Descriptive activity labels are included in the data set and activity numeric values are removed.
 7. A new data set is created with the average of each variable, grouped by activity and subject.
