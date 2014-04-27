# PEER ASSESSMENT PROJECT #
Project for the Getting and Cleaning Data course of Johns Hopkins University.

## About ##
In this project, there is a run_analysis.R script. It run over a "Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors." You can find more info [here] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data set is available [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## File description ##
The file should be arranged in this structure in order for the run_analysis.R script to work properly:
* ``<working directory>``:
 * run_analysis.R: script to merge, clean and analyse the data set.
 * features.txt: List of all features. Provided in the data set.
 * activity_labels.txt: Links the class labels with their activity name. Provided in the data set.
* ``<working directory>``/train: 
 * X_train.txt: Training set. Provided in the data set.
 * y_train.txt: Training labels. Provided in the data set.
 * subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. Provided in the data set.
* ``<working directory>``/test: 
 * X_test.txt: Test set. Provided in the data set.
 * y_test.txt: Test labels. Provided in the data set.
 * subject_test.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. Provided in the data set.

## How it works ##
The run_analysis.R script that does the following. 
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive activity names. 
 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
