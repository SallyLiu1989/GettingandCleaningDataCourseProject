Below are the descriptions of the output file "tidy_data_set.txt".

### Subject
The integer ID assigned to each of the 30 subjects. Range is from 1 to 30.

### Activity
The activity labels being performed by the subjects. It will be one of the six values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.

### Features in experiment
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. Mean value is denoted by mean(), and Standard deviation by std().

Below variables show the summarized mean values of each feature:

* tBodyLinearAcceleration.mean().X
* tBodyLinearAcceleration.mean().Y
* tBodyLinearAcceleration.mean().Z
* tGravityLinearAcceleration.mean().X
* tGravityLinearAcceleration.mean().Y
* tGravityLinearAcceleration.mean().Z
* tBodyLinearAccelerationJerk.mean().X
* tBodyLinearAccelerationJerk.mean().Y
* tBodyLinearAccelerationJerk.mean().Z
* tBodyAngularVelocity.mean().X
* tBodyAngularVelocity.mean().Y
* tBodyAngularVelocity.mean().Z
* tBodyAngularVelocityJerk.mean().X
* tBodyAngularVelocityJerk.mean().Y
* tBodyAngularVelocityJerk.mean().Z
* tBodyLinearAccelerationMag.mean()
* tGravityLinearAccelerationMag.mean()
* tBodyLinearAccelerationJerkMag.mean()
* tBodyAngularVelocityMag.mean()
* tBodyAngularVelocityJerkMag.mean()
* fBodyLinearAcceleration.mean().X
* fBodyLinearAcceleration.mean().Y
* fBodyLinearAcceleration.mean().Z
* fBodyLinearAccelerationJerk.mean().X
* fBodyLinearAccelerationJerk.mean().Y
* fBodyLinearAccelerationJerk.mean().Z
* fBodyAngularVelocity.mean().X
* fBodyAngularVelocity.mean().Y
* fBodyAngularVelocity.mean().Z
* fBodyLinearAccelerationMag.mean()
* fBodyBodyLinearAccelerationJerkMag.mean()
* fBodyBodyAngularVelocityMag.mean()
* fBodyBodyAngularVelocityJerkMag.mean()
* tBodyLinearAcceleration.std().X
* tBodyLinearAcceleration.std().Y
* tBodyLinearAcceleration.std().Z
* tGravityLinearAcceleration.std().X
* tGravityLinearAcceleration.std().Y
* tGravityLinearAcceleration.std().Z
* tBodyLinearAccelerationJerk.std().X
* tBodyLinearAccelerationJerk.std().Y
* tBodyLinearAccelerationJerk.std().Z
* tBodyAngularVelocity.std().X
* tBodyAngularVelocity.std().Y
* tBodyAngularVelocity.std().Z
* tBodyAngularVelocityJerk.std().X
* tBodyAngularVelocityJerk.std().Y
* tBodyAngularVelocityJerk.std().Z
* tBodyLinearAccelerationMag.std()
* tGravityLinearAccelerationMag.std()
* tBodyLinearAccelerationJerkMag.std()
* tBodyAngularVelocityMag.std()
* tBodyAngularVelocityJerkMag.std()
* fBodyLinearAcceleration.std().X
* fBodyLinearAcceleration.std().Y
* fBodyLinearAcceleration.std().Z
* fBodyLinearAccelerationJerk.std().X
* fBodyLinearAccelerationJerk.std().Y
* fBodyLinearAccelerationJerk.std().Z
* fBodyAngularVelocity.std().X
* fBodyAngularVelocity.std().Y
* fBodyAngularVelocity.std().Z
* fBodyLinearAccelerationMag.std()
* fBodyBodyLinearAccelerationJerkMag.std()
* fBodyBodyAngularVelocityMag.std()
* fBodyBodyAngularVelocityJerkMag.std()