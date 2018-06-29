# GettingCleaningData-Assignment

The objective of this project is to transform a raw data set with measures from samsung weareable to a tiny dataset useful to make data analysis.

The oririginal dataset can be downloaded from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Steps required

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Steps followed by run_analysis.R

1. Reading datasets and labels (complete activity and subject, and only mean and std of feature dataset)
2. Get feature labels
3. Read only wanted features
4. Merge train and test
5. Set levels, labels and colnames
6. Merge in one data set
7. Independent tidy data organised by means

## Results

The results are showed at the Results.txt file, and anotated by the Codebook.md file



