# README

This is the project for the "Getting and Cleaning Data" course on coursera: https://www.coursera.org/course/getdata

The Codebook.md file describes the data and data cleaning activities performed on the raw data.

By running the "run_analysis.R" file, the analysis is performed.  Please note that the first time you run the script you need to download and unzip the data manually or uncomment the first rows in the run_analysis.R file

tidy.txt contains the cleaned data produced by executing "run_analysis.R"

The data is processed in the following way:
 - Combine the training and the test sets to create one data set of all captured data
 - Extracted only the measurements on the mean and standard deviation for each measurement. 
 - Renamed the variables
 - Create a tidy data set with the average of each variable for each activity and each subject

The tidy dataset is thus 6 (activities) * 30 (subjects) * 79 (variables) = 14220 rows in the final file.
