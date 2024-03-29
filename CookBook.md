                           Data Dictionary

	Subject     Integer
      Person who participated in the test
            1..30 .unique identifier assigned to the test subject 

	Activity    String
      Activity carried out by Subject
            WALKING
            WALKING_UPSTAIRS
            WALKING_DOWNSTAIRS
            SITTING
            STANDING
            LAYING

Each of the next 66 variables is the average of its respective variable obtained by processing signals from accelerometers and gyroscopes from the smartphone of the Subject performing Activity.

*  		e.g. tBodyAcc-mean()-X is the ave of all tBodyAcc-mean()-X collected in the test  
*  		tBodyAcc-mean()-Y is the ave of all tBodyAcc-mean()-Y collected in the test
*       tBodyAcc-mean()-Z is the ave of all tBodyAcc-mean()-Z collected in the test
*       tBodyAcc-std()-X  is the ave of all tBodyAcc-std()-X  collected in the test


Suffix '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

	tBodyAcc-mean()-X           Numeric  
	tBodyAcc-mean()-Y           Numeric  
	tBodyAcc-mean()-Z           Numeric   
	tBodyAcc-std()-X            Numeric  
	tBodyAcc-std()-Y            Numeric  
	tBodyAcc-std()-Z            Numeric  
	tGravityAcc-mean()-X        Numeric  
	tGravityAcc-mean()-Y        Numeric  
	tGravityAcc-mean()-Z        Numeric  
	tGravityAcc-std()-X         Numeric  
	tGravityAcc-std()-Y         Numeric  
	tGravityAcc-std()-Z         Numeric  
	tBodyAccJerk-mean()-X       Numeric  
	tBodyAccJerk-mean()-Y       Numeric  
	tBodyAccJerk-mean()-Z       Numeric  
	tBodyAccJerk-std()-X        Numeric  
	tBodyAccJerk-std()-Y        Numeric  
	tBodyAccJerk-std()-Z        Numeric  
	tBodyGyro-mean()-X          Numeric  
	tBodyGyro-mean()-Y          Numeric  
	tBodyGyro-mean()-Z          Numeric  
	tBodyGyro-std()-X           Numeric     
	tBodyGyro-std()-Y           Numeric  
	tBodyGyro-std()-Z           Numeric  
	tBodyGyroJerk-mean()-X      Numeric  
	tBodyGyroJerk-mean()-Y      Numeric  
	tBodyGyroJerk-mean()-Z      Numeric  
	tBodyGyroJerk-std()-X       Numeric  
	tBodyGyroJerk-std()-Y       Numeric  
	tBodyGyroJerk-std()-Z       Numeric  
	tBodyAccMag-mean()          Numeric  
	tBodyAccMag-std()           Numeric  
	tGravityAccMag-mean()       Numeric  
	tGravityAccMag-std()        Numeric  
	tBodyAccJerkMag-mean()      Numeric  
	tBodyAccJerkMag-std()       Numeric  
	tBodyGyroMag-mean()         Numeric  
	tBodyGyroMag-std()          Numeric  
	tBodyGyroJerkMag-mean()     Numeric   
	tBodyGyroJerkMag-std()      Numeric  
	fBodyAcc-mean()-X           Numeric  
	fBodyAcc-mean()-Y           Numeric  
	fBodyAcc-mean()-Z           Numeric    
	fBodyAcc-std()-X            Numeric  
	fBodyAcc-std()-Y            Numeric  
	fBodyAcc-std()-Z            Numeric  
	fBodyAccJerk-mean()-X       Numeric  
	fBodyAccJerk-mean()-Y       Numeric  
	fBodyAccJerk-mean()-Z       Numeric  
	fBodyAccJerk-std()-X        Numeric  
	fBodyAccJerk-std()-Y        Numeric  
	fBodyAccJerk-std()-Z        Numeric  
	fBodyGyro-mean()-X          Numeric  
	fBodyGyro-mean()-Y          Numeric  
	fBodyGyro-mean()-Z          Numeric  
	fBodyGyro-std()-X           Numeric  
	fBodyGyro-std()-Y           Numeric  
	fBodyGyro-std()-Z           Numeric  
	fBodyAccMag-mean()          Numeric  
	fBodyAccMag-std()           Numeric  
	fBodyBodyAccJerkMag-mean()  Numeric  
	fBodyBodyAccJerkMag-std()   Numeric  
	fBodyBodyGyroMag-mean()     Numeric  
	fBodyBodyGyroMag-std()      Numeric  
	fBodyBodyGyroJerkMag-mean() Numeric  
	fBodyBodyGyroJerkMag-std()  Numeric  

