### Code Book

## Post process data sourced from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Coursera Assignment: You will be required to submit: 

1) a tidy data set as described below, 
2) a link to a Github repository with your script for performing the analysis, and 
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

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

### Fields
Field #	Field Name
1				Subject		- Domain 1-30
2				Activity  - WALKING, SITTING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, STANDING, LAYING
3				TimeBodyAccelerometer-Mean()-X - Seconds
4				TimeBodyAccelerometer-Mean()-Y - Seconds
5	TimeBodyAccelerometer-Mean()-Z - Seconds
6	TimeBodyAccelerometer-Standard Deviation()-X - Seconds
7	TimeBodyAccelerometer-Standard Deviation()-Y - Seconds
8	TimeBodyAccelerometer-Standard Deviation()-Z - Seconds
9	TimeGravityAccelerometer-Mean()-X - Seconds
10	TimeGravityAccelerometer-Mean()-Y - Seconds
11	TimeGravityAccelerometer-Mean()-Z - Seconds
12	TimeGravityAccelerometer-Standard Deviation()-X - Seconds
13	TimeGravityAccelerometer-Standard Deviation()-Y - Seconds
14	TimeGravityAccelerometer-Standard Deviation()-Z - Seconds
15	TimeBodyAccelerometerJerk-Mean()-X - Seconds
16	TimeBodyAccelerometerJerk-Mean()-Y - Seconds
17	TimeBodyAccelerometerJerk-Mean()-Z - Seconds
18	TimeBodyAccelerometerJerk-Standard Deviation()-X - Seconds
19	TimeBodyAccelerometerJerk-Standard Deviation()-Y - Seconds
20	TimeBodyAccelerometerJerk-Standard Deviation()-Z - Seconds
21	TimeBodyGyroscope-Mean()-X - Seconds
22	TimeBodyGyroscope-Mean()-Y - Seconds
23	TimeBodyGyroscope-Mean()-Z - Seconds
24	TimeBodyGyroscope-Standard Deviation()-X - Seconds
25	TimeBodyGyroscope-Standard Deviation()-Y - Seconds
26	TimeBodyGyroscope-Standard Deviation()-Z - Seconds
27	TimeBodyGyroscopeJerk-Mean()-X - Seconds
28	TimeBodyGyroscopeJerk-Mean()-Y - Seconds
29	TimeBodyGyroscopeJerk-Mean()-Z - Seconds
30	TimeBodyGyroscopeJerk-Standard Deviation()-X - Seconds
31	TimeBodyGyroscopeJerk-Standard Deviation()-Y - Seconds
32	TimeBodyGyroscopeJerk-Standard Deviation()-Z - Seconds
33	TimeBodyAccelerometerMagnitude-Mean() - Seconds
34	TimeBodyAccelerometerMagnitude-Standard Deviation() - Seconds
35	TimeGravityAccelerometerMagnitude-Mean() - Seconds
36	TimeGravityAccelerometerMagnitude-Standard Deviation() - Seconds
37	TimeBodyAccelerometerJerkMagnitude-Mean() - Seconds
38	TimeBodyAccelerometerJerkMagnitude-Standard Deviation() - Seconds
39	TimeBodyGyroscopeMagnitude-Mean() - Seconds
40	TimeBodyGyroscopeMagnitude-Standard Deviation() - Seconds
41	TimeBodyGyroscopeJerkMagnitude-Mean() - Seconds
42	TimeBodyGyroscopeJerkMagnitude-Standard Deviation() - Seconds
43	FrequencyBodyAccelerometer-Mean()-X 
44	FrequencyBodyAccelerometer-Mean()-Y
45	FrequencyBodyAccelerometer-Mean()-Z 
46	FrequencyBodyAccelerometer-Standard Deviation()-X 
47	FrequencyBodyAccelerometer-Standard Deviation()-Y
48	FrequencyBodyAccelerometer-Standard Deviation()-Z
49	FrequencyBodyAccelerometerJerk-Mean()-X
50	FrequencyBodyAccelerometerJerk-Mean()-Y
51	FrequencyBodyAccelerometerJerk-Mean()-Z
52	FrequencyBodyAccelerometerJerk-Standard Deviation()-X
53	FrequencyBodyAccelerometerJerk-Standard Deviation()-Y
54	FrequencyBodyAccelerometerJerk-Standard Deviation()-Z
55	FrequencyBodyGyroscope-Mean()-X
56	FrequencyBodyGyroscope-Mean()-Y
57	FrequencyBodyGyroscope-Mean()-Z
58	FrequencyBodyGyroscope-Standard Deviation()-X
59	FrequencyBodyGyroscope-Standard Deviation()-Y
60	FrequencyBodyGyroscope-Standard Deviation()-Z
61	FrequencyBodyAccelerometerMagnitude-Mean()
62	FrequencyBodyAccelerometerMagnitude-Standard Deviation()
63	FrequencyBodyAccelerometerJerkMagnitude-Mean()
64	FrequencyBodyAccelerometerJerkMagnitude-Standard Deviation()
65	FrequencyBodyGyroscopeMagnitude-Mean()
66	FrequencyBodyGyroscopeMagnitude-Standard Deviation()
67	FrequencyBodyGyroscopeJerkMagnitude-Mean()
68	FrequencyBodyGyroscopeJerkMagnitude-Standard Deviation()

