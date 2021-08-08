# Final_assignment
Final assignment for Getting and Cleaning Data
-	This is the final peer-graded assignment for the Getting and Cleaning Data 
-	Required data was downloaded from the web 
-	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
-	Read both train and test datasets and then merge them by using rbind into x = measurements, y = activity and subject.
-	Load feature information (features.txt) and extracted relevant columns containing mean and standard deviations. 
-	Column names were renamed -mean to Mean and -std to Std and removed dashes and parenthesis and other symbols from those names. 
-	Combined all data sets into a single data frame containing dataS, DataY and dataX.
-	Added column names to the new data frame.   
-	Generated tidy dataset containing mean and standard deviation for each subject and activity.  The result is shown in the tidyDataset.txt.


