# CodeBook for the "Getting and Cleaning Data" course project

This codebook describes the analysis performed by running the "run_analysis.R" file.

The following is described in this section:
 - the data
 - data processing
 - a desciption of the data

## Data
The data used in this analysis is information from the accelerometers from the Samsung Galaxy S smartphone.[1]

More information can be found on this website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data itself is downloaded from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For this analysis, the pre-processed data is used as was done by the providers of the dataset.[1]

From a high-level view, the data consists of the following:
 - 30 volunteers within an age bracket of 19-48 years
 - 6 activities
 - sensor signals

## Data processing

The data is processed in the following way:
 - Combine the training and the test sets to create one data set of all captured data
 - Extracted only the measurements on the mean and standard deviation for each measurement. 
 - Renamed the variables
 - Create a tidy data set with the average of each variable for each activity and each subject

The tidy dataset is thus 6 (activities) * 30 (subjects) * 79 (variables) = 14220 rows in the final file.

## Data description

The tidy.txt file contains the cleaned data in a "long" format as output of the data processing step and contains the following fields:
 - activity (factor variable)
 - subject (integer value)
 - variable (character description)
 - average (numeric value)

These fields are described futher below

### activity
id is the numeric identifier of the variables

The following activities are possible:

```
 id name              
 1  WALKING           
 2  WALKING_UPSTAIRS  
 3  WALKING_DOWNSTAIRS
 4  SITTING           
 5  STANDING          
 6  LAYING            
```

### subject
There are 30 volunteers/subjects within an age bracket of 19-48 years.  Each one is labeled as an number from 1 to 30.

### variable
The variables represent the sensor signals collected.  They are based on the variables of the original file but are selected to show only the variables representing the mean and standard deviation.

The table below describes the mapping bewteen the original variable names and the variables used.  These are the fields:
 - id: integer value of the column of in the original file
 - name: name of the variable in the original file (character)
 - variablename: name of the variable used (character)

The naming uses the following conventions:
 - prefix 'f' indicates frequency domain signals
 - prefix 't' denotes time
 - the suffix '-XYZ' is used to identify the 3-axial signals in the X, Y and Z direction(s)

The following is a list of the mapping:

```
 id  name                            variablename                
   1 tBodyAcc-mean()-X               tBodyAccmeanX               
   2 tBodyAcc-mean()-Y               tBodyAccmeanY               
   3 tBodyAcc-mean()-Z               tBodyAccmeanZ               
   4 tBodyAcc-std()-X                tBodyAccstdX                
   5 tBodyAcc-std()-Y                tBodyAccstdY                
   6 tBodyAcc-std()-Z                tBodyAccstdZ                
  41 tGravityAcc-mean()-X            tGravityAccmeanX            
  42 tGravityAcc-mean()-Y            tGravityAccmeanY            
  43 tGravityAcc-mean()-Z            tGravityAccmeanZ            
  44 tGravityAcc-std()-X             tGravityAccstdX             
  45 tGravityAcc-std()-Y             tGravityAccstdY             
  46 tGravityAcc-std()-Z             tGravityAccstdZ             
  81 tBodyAccJerk-mean()-X           tBodyAccJerkmeanX           
  82 tBodyAccJerk-mean()-Y           tBodyAccJerkmeanY           
  83 tBodyAccJerk-mean()-Z           tBodyAccJerkmeanZ           
  84 tBodyAccJerk-std()-X            tBodyAccJerkstdX            
  85 tBodyAccJerk-std()-Y            tBodyAccJerkstdY            
  86 tBodyAccJerk-std()-Z            tBodyAccJerkstdZ            
 121 tBodyGyro-mean()-X              tBodyGyromeanX              
 122 tBodyGyro-mean()-Y              tBodyGyromeanY              
 123 tBodyGyro-mean()-Z              tBodyGyromeanZ              
 124 tBodyGyro-std()-X               tBodyGyrostdX               
 125 tBodyGyro-std()-Y               tBodyGyrostdY               
 126 tBodyGyro-std()-Z               tBodyGyrostdZ               
 161 tBodyGyroJerk-mean()-X          tBodyGyroJerkmeanX          
 162 tBodyGyroJerk-mean()-Y          tBodyGyroJerkmeanY          
 163 tBodyGyroJerk-mean()-Z          tBodyGyroJerkmeanZ          
 164 tBodyGyroJerk-std()-X           tBodyGyroJerkstdX           
 165 tBodyGyroJerk-std()-Y           tBodyGyroJerkstdY           
 166 tBodyGyroJerk-std()-Z           tBodyGyroJerkstdZ           
 201 tBodyAccMag-mean()              tBodyAccMagmean             
 202 tBodyAccMag-std()               tBodyAccMagstd              
 214 tGravityAccMag-mean()           tGravityAccMagmean          
 215 tGravityAccMag-std()            tGravityAccMagstd           
 227 tBodyAccJerkMag-mean()          tBodyAccJerkMagmean         
 228 tBodyAccJerkMag-std()           tBodyAccJerkMagstd          
 240 tBodyGyroMag-mean()             tBodyGyroMagmean            
 241 tBodyGyroMag-std()              tBodyGyroMagstd             
 253 tBodyGyroJerkMag-mean()         tBodyGyroJerkMagmean        
 254 tBodyGyroJerkMag-std()          tBodyGyroJerkMagstd         
 266 fBodyAcc-mean()-X               fBodyAccmeanX               
 267 fBodyAcc-mean()-Y               fBodyAccmeanY               
 268 fBodyAcc-mean()-Z               fBodyAccmeanZ               
 269 fBodyAcc-std()-X                fBodyAccstdX                
 270 fBodyAcc-std()-Y                fBodyAccstdY                
 271 fBodyAcc-std()-Z                fBodyAccstdZ                
 294 fBodyAcc-meanFreq()-X           fBodyAccmeanFreqX           
 295 fBodyAcc-meanFreq()-Y           fBodyAccmeanFreqY           
 296 fBodyAcc-meanFreq()-Z           fBodyAccmeanFreqZ           
 345 fBodyAccJerk-mean()-X           fBodyAccJerkmeanX           
 346 fBodyAccJerk-mean()-Y           fBodyAccJerkmeanY           
 347 fBodyAccJerk-mean()-Z           fBodyAccJerkmeanZ           
 348 fBodyAccJerk-std()-X            fBodyAccJerkstdX            
 349 fBodyAccJerk-std()-Y            fBodyAccJerkstdY            
 350 fBodyAccJerk-std()-Z            fBodyAccJerkstdZ            
 373 fBodyAccJerk-meanFreq()-X       fBodyAccJerkmeanFreqX       
 374 fBodyAccJerk-meanFreq()-Y       fBodyAccJerkmeanFreqY       
 375 fBodyAccJerk-meanFreq()-Z       fBodyAccJerkmeanFreqZ       
 424 fBodyGyro-mean()-X              fBodyGyromeanX              
 425 fBodyGyro-mean()-Y              fBodyGyromeanY              
 426 fBodyGyro-mean()-Z              fBodyGyromeanZ              
 427 fBodyGyro-std()-X               fBodyGyrostdX               
 428 fBodyGyro-std()-Y               fBodyGyrostdY               
 429 fBodyGyro-std()-Z               fBodyGyrostdZ               
 452 fBodyGyro-meanFreq()-X          fBodyGyromeanFreqX          
 453 fBodyGyro-meanFreq()-Y          fBodyGyromeanFreqY          
 454 fBodyGyro-meanFreq()-Z          fBodyGyromeanFreqZ          
 503 fBodyAccMag-mean()              fBodyAccMagmean             
 504 fBodyAccMag-std()               fBodyAccMagstd              
 513 fBodyAccMag-meanFreq()          fBodyAccMagmeanFreq         
 516 fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMagmean     
 517 fBodyBodyAccJerkMag-std()       fBodyBodyAccJerkMagstd      
 526 fBodyBodyAccJerkMag-meanFreq()  fBodyBodyAccJerkMagmeanFreq 
 529 fBodyBodyGyroMag-mean()         fBodyBodyGyroMagmean        
 530 fBodyBodyGyroMag-std()          fBodyBodyGyroMagstd         
 539 fBodyBodyGyroMag-meanFreq()     fBodyBodyGyroMagmeanFreq    
 542 fBodyBodyGyroJerkMag-mean()     fBodyBodyGyroJerkMagmean    
 543 fBodyBodyGyroJerkMag-std()      fBodyBodyGyroJerkMagstd     
 552 fBodyBodyGyroJerkMag-meanFreq() fBodyBodyGyroJerkMagmeanFreq
```

### average



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
