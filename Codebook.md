## Datasource

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

--- 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person (subject) performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz are captured. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See section Features below for more details. 

Features
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

Features are normalized and bounded within [-1,1]. For each combination of <em>subject</em> and <em>activity</em> the average of each feature is calculated.

|| Column name | Class | Range | Mean |
|---|-------------|-------|------------|-----------|
1 | subject | integer | 1  /  30 | 
2 | activity | factor | WALKING / WALKING_UPSTAIRS / WALKING_DOWNSTAIRS / SITTING / STANDING / LAYING | 
3 | tBodyAcc-mean()-X | numeric | 0.22159824394  /  0.3014610196 | 0.274302742245795
4 | tBodyAcc-mean()-Y | numeric | -0.0405139534294  /  -0.00130828765170213 | -0.0178755238674415
5 | tBodyAcc-mean()-Z | numeric | -0.152513899520833  /  -0.07537846886 | -0.109163815804519
6 | tBodyAcc-std()-X | numeric | -0.996068635384615  /  0.626917070512821 | -0.557690076404401
7 | tBodyAcc-std()-Y | numeric | -0.990240946666667  /  0.616937015333333 | -0.460462635378301
8 | tBodyAcc-std()-Z | numeric | -0.987658662307692  /  0.609017879074074 | -0.575560246148636
9 | tGravityAcc-mean()-X | numeric | -0.680043155060241  /  0.974508732 | 0.697477505882702
10 | tGravityAcc-mean()-Y | numeric | -0.479894842941176  /  0.956593814210526 | -0.0162128361521394
11 | tGravityAcc-mean()-Z | numeric | -0.49508872037037  /  0.9578730416 | 0.0741278709325255
12 | tGravityAcc-std()-X | numeric | -0.996764227384615  /  -0.829554947808219 | -0.96375253077172
13 | tGravityAcc-std()-Y | numeric | -0.99424764884058  /  -0.643578361424658 | -0.952429559765945
14 | tGravityAcc-std()-Z | numeric | -0.990957249538462  /  -0.610161166287671 | -0.93640104156585
15 | tBodyAccJerk-mean()-X | numeric | 0.0426880986186441  /  0.130193043809524 | 0.0794735599203562
16 | tBodyAccJerk-mean()-Y | numeric | -0.0386872111282051  /  0.056818586275 | 0.00756520996888408
17 | tBodyAccJerk-mean()-Z | numeric | -0.0674583919268293  /  0.0380533591627451 | -0.00495340328183431
18 | tBodyAccJerk-std()-X | numeric | -0.994604542264151  /  0.544273037307692 | -0.594946699510964
19 | tBodyAccJerk-std()-Y | numeric | -0.989513565652174  /  0.355306716915385 | -0.565414714340423
20 | tBodyAccJerk-std()-Z | numeric | -0.993288313333333  /  0.0310157077775926 | -0.735957689241115
21 | tBodyGyro-mean()-X | numeric | -0.205775427307692  /  0.19270447595122 | -0.0324371599031218
22 | tBodyGyro-mean()-Y | numeric | -0.204205356087805  /  0.0274707556666667 | -0.0742595723452297
23 | tBodyGyro-mean()-Z | numeric | -0.0724546025804878  /  0.179102058245614 | 0.0874446468695526
24 | tBodyGyro-std()-X | numeric | -0.994276591304348  /  0.267657219333333 | -0.691639902777431
25 | tBodyGyro-std()-Y | numeric | -0.994210471914894  /  0.476518714444444 | -0.653302029911363
26 | tBodyGyro-std()-Z | numeric | -0.985538363333333  /  0.564875818162963 | -0.616435294332593
27 | tBodyGyroJerk-mean()-X | numeric | -0.157212539189362  /  -0.0220916265065217 | -0.0960567959204382
28 | tBodyGyroJerk-mean()-Y | numeric | -0.0768089915604167  /  -0.0132022768074468 | -0.0426927819752453
29 | tBodyGyroJerk-mean()-Z | numeric | -0.0924998531372549  /  -0.00694066389361702 | -0.0548018825799509
30 | tBodyGyroJerk-std()-X | numeric | -0.99654254057971  /  0.179148649684615 | -0.703632714557601
31 | tBodyGyroJerk-std()-Y | numeric | -0.997081575652174  /  0.295945926186441 | -0.763551835158898
32 | tBodyGyroJerk-std()-Z | numeric | -0.995380794637681  /  0.193206498960417 | -0.709559184010004
33 | tBodyAccMag-mean() | numeric | -0.986493196666667  /  0.644604325128205 | -0.49728966685894
34 | tBodyAccMag-std() | numeric | -0.986464542615385  /  0.428405922622222 | -0.543908670845839
35 | tGravityAccMag-mean() | numeric | -0.986493196666667  /  0.644604325128205 | -0.49728966685894
36 | tGravityAccMag-std() | numeric | -0.986464542615385  /  0.428405922622222 | -0.543908670845839
37 | tBodyAccJerkMag-mean() | numeric | -0.99281471515625  /  0.434490400974359 | -0.607929591545179
38 | tBodyAccJerkMag-std() | numeric | -0.994646916811594  /  0.450612065720513 | -0.584175609709768
39 | tBodyGyroMag-mean() | numeric | -0.980740846769231  /  0.418004608615385 | -0.565163077212988
40 | tBodyGyroMag-std() | numeric | -0.981372675614035  /  0.299975979851852 | -0.630394720315622
41 | tBodyGyroJerkMag-mean() | numeric | -0.997322526811594  /  0.0875816618205128 | -0.736369300428253
42 | tBodyGyroJerkMag-std() | numeric | -0.997666071594203  /  0.250173204117966 | -0.755015188509002
43 | fBodyAcc-mean()-X | numeric | -0.995249932641509  /  0.537012022051282 | -0.575799983503946
44 | fBodyAcc-mean()-Y | numeric | -0.989034304057971  /  0.524187686888889 | -0.488732713013952
45 | fBodyAcc-mean()-Z | numeric | -0.989473926666667  /  0.280735952206667 | -0.62973875362598
46 | fBodyAcc-std()-X | numeric | -0.996604570307692  /  0.658506543333333 | -0.552201112392524
47 | fBodyAcc-std()-Y | numeric | -0.990680395362319  /  0.560191344 | -0.481478729871355
48 | fBodyAcc-std()-Z | numeric | -0.987224804307692  /  0.687124163703704 | -0.582361415029381
49 | fBodyAccJerk-mean()-X | numeric | -0.994630797358491  /  0.474317256051282 | -0.613928222283428
50 | fBodyAccJerk-mean()-Y | numeric | -0.989398823913043  /  0.276716853307692 | -0.588163069360073
51 | fBodyAccJerk-mean()-Z | numeric | -0.992018447826087  /  0.157775692377778 | -0.714358487490646
52 | fBodyAccJerk-std()-X | numeric | -0.995073759245283  /  0.476803887476923 | -0.612103283207987
53 | fBodyAccJerk-std()-Y | numeric | -0.990468082753623  /  0.349771285415897 | -0.570730968650136
54 | fBodyAccJerk-std()-Z | numeric | -0.993107759855072  /  -0.00623647528983051 | -0.756489426411787
55 | fBodyGyro-mean()-X | numeric | -0.99312260884058  /  0.474962448333333 | -0.636739605053057
56 | fBodyGyro-mean()-Y | numeric | -0.994025488297872  /  0.328817010088889 | -0.676686800745998
57 | fBodyGyro-mean()-Z | numeric | -0.985957788  /  0.492414379822222 | -0.604391244378742
58 | fBodyGyro-std()-X | numeric | -0.994652185217391  /  0.196613286661538 | -0.711035658050846
59 | fBodyGyro-std()-Y | numeric | -0.994353086595745  /  0.646233637037037 | -0.645433416234092
60 | fBodyGyro-std()-Z | numeric | -0.986725274871795  /  0.522454216314815 | -0.657746585870822
61 | fBodyAccMag-mean() | numeric | -0.986800645362319  /  0.586637550769231 | -0.536516692548498
62 | fBodyAccMag-std() | numeric | -0.987648484461539  /  0.178684580868889 | -0.620963293005196
63 | fBodyBodyAccJerkMag-mean() | numeric | -0.993998275797101  /  0.538404846128205 | -0.575617493234432
64 | fBodyBodyAccJerkMag-std() | numeric | -0.994366667681159  /  0.316346415348718 | -0.599160868317743
65 | fBodyBodyGyroMag-mean() | numeric | -0.986535242105263  /  0.203979764835897 | -0.667099099613148
66 | fBodyBodyGyroMag-std() | numeric | -0.981468841692308  /  0.236659662496296 | -0.672322349574843
67 | fBodyBodyGyroJerkMag-mean() | numeric | -0.997617389275362  /  0.146618569064407 | -0.756385271117363
68 | fBodyBodyGyroJerkMag-std() | numeric | -0.99758523057971  /  0.287834616098305 | -0.771517051737343
