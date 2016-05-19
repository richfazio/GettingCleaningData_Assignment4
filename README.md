### GettingCleaningData_Assignment4
Assignment #4


### READ.ME

Post process data sourced from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Input File
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A further analsys of the above prior art.

CodeBook.MD describes the proceses used
run_analysis.R is the script used to produced the "tidy" file
tidy_data_X_Y_subject_avg.txt is the data file.


### Inputs:
Data as described from ici.edu website

### Process:
1) Initialization - prep environment

2) Pull data file

3) Load all data into workspace

4) Merge training/test data together

5) Select just the mean/std dev features from published files

6) Add labels to selected data (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

7) Create superset

8) Pretty up labels of selected data

9) Compute summary metrics

10) Publish new summary file

### Outputs:
Single "tidy" file.  Attributes specified in Assignment4_FieldSpec.xls
Filename: tidy_data_X_Y_subject_avg.txt (prettier view)
Format: created by R write.table

Thanks for grading my assignment,
Faz


