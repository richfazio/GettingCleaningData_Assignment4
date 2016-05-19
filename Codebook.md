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


Field #	Field Name	Details	Datatype	Domain
1	Subject	SubjectID Number	Numeric	1-30
2	Activity	ActivityRecorded	String	WALKING, SITTING, 
WALKING_UPSTAIRS, 
WALKING_DOWNSTAIRS, 
STANDING, LAYING
3	TimeBodyAccelerometer-Mean()-X	Time for Accel in S	Numeric	Real Number
4	TimeBodyAccelerometer-Mean()-Y	Time for Accel in S	Numeric	Real Number
5	TimeBodyAccelerometer-Mean()-Z	Time for Accel in S	Numeric	Real Number
6	TimeBodyAccelerometer-Standard Deviation()-X	Time for Accel in S	Numeric	Real Number
7	TimeBodyAccelerometer-Standard Deviation()-Y	Time for Accel in S	Numeric	Real Number
8	TimeBodyAccelerometer-Standard Deviation()-Z	Time for Accel in S	Numeric	Real Number
9	TimeGravityAccelerometer-Mean()-X	Time for Accel in S	Numeric	Real Number
10	TimeGravityAccelerometer-Mean()-Y	Time for Accel in S	Numeric	Real Number
11	TimeGravityAccelerometer-Mean()-Z	Time for Accel in S	Numeric	Real Number
12	TimeGravityAccelerometer-Standard Deviation()-X	Time for Accel in S	Numeric	Real Number
13	TimeGravityAccelerometer-Standard Deviation()-Y	Time for Accel in S	Numeric	Real Number
14	TimeGravityAccelerometer-Standard Deviation()-Z	Time for Accel in S	Numeric	Real Number
15	TimeBodyAccelerometerJerk-Mean()-X	Time for Accel in S	Numeric	Real Number
16	TimeBodyAccelerometerJerk-Mean()-Y	Time for Accel in S	Numeric	Real Number
17	TimeBodyAccelerometerJerk-Mean()-Z	Time for Accel in S	Numeric	Real Number
18	TimeBodyAccelerometerJerk-Standard Deviation()-X	Time for Accel in S	Numeric	Real Number
19	TimeBodyAccelerometerJerk-Standard Deviation()-Y	Time for Accel in S	Numeric	Real Number
20	TimeBodyAccelerometerJerk-Standard Deviation()-Z	Time for Accel in S	Numeric	Real Number
21	TimeBodyGyroscope-Mean()-X	Time for Accel in S	Numeric	Real Number
22	TimeBodyGyroscope-Mean()-Y	Time for Accel in S	Numeric	Real Number
23	TimeBodyGyroscope-Mean()-Z	Time for Accel in S	Numeric	Real Number
24	TimeBodyGyroscope-Standard Deviation()-X	Time for Accel in S	Numeric	Real Number
25	TimeBodyGyroscope-Standard Deviation()-Y	Time for Accel in S	Numeric	Real Number
26	TimeBodyGyroscope-Standard Deviation()-Z	Time for Accel in S	Numeric	Real Number
27	TimeBodyGyroscopeJerk-Mean()-X	Time for Accel in S	Numeric	Real Number
28	TimeBodyGyroscopeJerk-Mean()-Y	Time for Accel in S	Numeric	Real Number
29	TimeBodyGyroscopeJerk-Mean()-Z	Time for Accel in S	Numeric	Real Number
30	TimeBodyGyroscopeJerk-Standard Deviation()-X	Time for Accel in S	Numeric	Real Number
31	TimeBodyGyroscopeJerk-Standard Deviation()-Y	Time for Accel in S	Numeric	Real Number
32	TimeBodyGyroscopeJerk-Standard Deviation()-Z	Time for Accel in S	Numeric	Real Number
33	TimeBodyAccelerometerMagnitude-Mean()	Time for Accel in S	Numeric	Real Number
34	TimeBodyAccelerometerMagnitude-Standard Deviation()	Time for Accel in S	Numeric	Real Number
35	TimeGravityAccelerometerMagnitude-Mean()	Time for Accel in S	Numeric	Real Number
36	TimeGravityAccelerometerMagnitude-Standard Deviation()	Time for Accel in S	Numeric	Real Number
37	TimeBodyAccelerometerJerkMagnitude-Mean()	Time for Accel in S	Numeric	Real Number
38	TimeBodyAccelerometerJerkMagnitude-Standard Deviation()	Time for Accel in S	Numeric	Real Number
39	TimeBodyGyroscopeMagnitude-Mean()	Time for Accel in S	Numeric	Real Number
40	TimeBodyGyroscopeMagnitude-Standard Deviation()	Time for Accel in S	Numeric	Real Number
41	TimeBodyGyroscopeJerkMagnitude-Mean()	Time for Accel in S	Numeric	Real Number
42	TimeBodyGyroscopeJerkMagnitude-Standard Deviation()	Time for Accel in S	Numeric	Real Number
43	FrequencyBodyAccelerometer-Mean()-X	Count samples taken	Numeric	Real Number
44	FrequencyBodyAccelerometer-Mean()-Y	Count samples taken	Numeric	Real Number
45	FrequencyBodyAccelerometer-Mean()-Z	Count samples taken	Numeric	Real Number
46	FrequencyBodyAccelerometer-Standard Deviation()-X	Count samples taken	Numeric	Real Number
47	FrequencyBodyAccelerometer-Standard Deviation()-Y	Count samples taken	Numeric	Real Number
48	FrequencyBodyAccelerometer-Standard Deviation()-Z	Count samples taken	Numeric	Real Number
49	FrequencyBodyAccelerometerJerk-Mean()-X	Count samples taken	Numeric	Real Number
50	FrequencyBodyAccelerometerJerk-Mean()-Y	Count samples taken	Numeric	Real Number
51	FrequencyBodyAccelerometerJerk-Mean()-Z	Count samples taken	Numeric	Real Number
52	FrequencyBodyAccelerometerJerk-Standard Deviation()-X	Count samples taken	Numeric	Real Number
53	FrequencyBodyAccelerometerJerk-Standard Deviation()-Y	Count samples taken	Numeric	Real Number
54	FrequencyBodyAccelerometerJerk-Standard Deviation()-Z	Count samples taken	Numeric	Real Number
55	FrequencyBodyGyroscope-Mean()-X	Count samples taken	Numeric	Real Number
56	FrequencyBodyGyroscope-Mean()-Y	Count samples taken	Numeric	Real Number
57	FrequencyBodyGyroscope-Mean()-Z	Count samples taken	Numeric	Real Number
58	FrequencyBodyGyroscope-Standard Deviation()-X	Count samples taken	Numeric	Real Number
59	FrequencyBodyGyroscope-Standard Deviation()-Y	Count samples taken	Numeric	Real Number
60	FrequencyBodyGyroscope-Standard Deviation()-Z	Count samples taken	Numeric	Real Number
61	FrequencyBodyAccelerometerMagnitude-Mean()	Count samples taken	Numeric	Real Number
62	FrequencyBodyAccelerometerMagnitude-Standard Deviation()	Count samples taken	Numeric	Real Number
63	FrequencyBodyAccelerometerJerkMagnitude-Mean()	Count samples taken	Numeric	Real Number
64	FrequencyBodyAccelerometerJerkMagnitude-Standard Deviation()	Count samples taken	Numeric	Real Number
65	FrequencyBodyGyroscopeMagnitude-Mean()	Count samples taken	Numeric	Real Number
66	FrequencyBodyGyroscopeMagnitude-Standard Deviation()	Count samples taken	Numeric	Real Number
67	FrequencyBodyGyroscopeJerkMagnitude-Mean()	Count samples taken	Numeric	Real Number
68	FrequencyBodyGyroscopeJerkMagnitude-Standard Deviation()	Count samples taken	Numeric	Real Number





