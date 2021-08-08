## Data Modifications
- Respective Test and Trained data (S, Y and X) were merged to create a single data set.
- Measurement data columns names for mean and standard deviation we renamed for easy of use (eg:- tBodyAcc-mean()-X to tBodyAccMeanX and tBodyAcc-std()-Y to tBodyAccStdY)
- Test and trained data for S and Y were combined with measurement data (X) and the respective S and Y columns were names as "Subjects" and "Activity"
- Generated tidy data were saved in a new file (tidyData.txt).

## Measurement data columns

Following are the list of measurement column names used in tidyData.txt

[1] "tBodyAccMeanX"                "tBodyAccMeanY"               
[3] "tBodyAccMeanZ"                "tBodyAccStdX"                
[5] "tBodyAccStdY"                 "tBodyAccStdZ"                
[7] "tGravityAccMeanX"             "tGravityAccMeanY"            
[9] "tGravityAccMeanZ"             "tGravityAccStdX"             
[11] "tGravityAccStdY"              "tGravityAccStdZ"             
[13] "tBodyAccJerkMeanX"            "tBodyAccJerkMeanY"           
[15] "tBodyAccJerkMeanZ"            "tBodyAccJerkStdX"            
[17] "tBodyAccJerkStdY"             "tBodyAccJerkStdZ"            
[19] "tBodyGyroMeanX"               "tBodyGyroMeanY"              
[21] "tBodyGyroMeanZ"               "tBodyGyroStdX"               
[23] "tBodyGyroStdY"                "tBodyGyroStdZ"               
[25] "tBodyGyroJerkMeanX"           "tBodyGyroJerkMeanY"          
[27] "tBodyGyroJerkMeanZ"           "tBodyGyroJerkStdX"           
[29] "tBodyGyroJerkStdY"            "tBodyGyroJerkStdZ"           
[31] "tBodyAccMagMean"              "tBodyAccMagStd"              
[33] "tGravityAccMagMean"           "tGravityAccMagStd"           
[35] "tBodyAccJerkMagMean"          "tBodyAccJerkMagStd"          
[37] "tBodyGyroMagMean"             "tBodyGyroMagStd"             
[39] "tBodyGyroJerkMagMean"         "tBodyGyroJerkMagStd"         
[41] "fBodyAccMeanX"                "fBodyAccMeanY"               
[43] "fBodyAccMeanZ"                "fBodyAccStdX"                
[45] "fBodyAccStdY"                 "fBodyAccStdZ"                
[47] "fBodyAccMeanFreqX"            "fBodyAccMeanFreqY"           
[49] "fBodyAccMeanFreqZ"            "fBodyAccJerkMeanX"           
[51] "fBodyAccJerkMeanY"            "fBodyAccJerkMeanZ"           
[53] "fBodyAccJerkStdX"             "fBodyAccJerkStdY"            
[55] "fBodyAccJerkStdZ"             "fBodyAccJerkMeanFreqX"       
[57] "fBodyAccJerkMeanFreqY"        "fBodyAccJerkMeanFreqZ"       
[59] "fBodyGyroMeanX"               "fBodyGyroMeanY"              
[61] "fBodyGyroMeanZ"               "fBodyGyroStdX"               
[63] "fBodyGyroStdY"                "fBodyGyroStdZ"               
[65] "fBodyGyroMeanFreqX"           "fBodyGyroMeanFreqY"          
[67] "fBodyGyroMeanFreqZ"           "fBodyAccMagMean"             
[69] "fBodyAccMagStd"               "fBodyAccMagMeanFreq"         
[71] "fBodyBodyAccJerkMagMean"      "fBodyBodyAccJerkMagStd"      
[73] "fBodyBodyAccJerkMagMeanFreq"  "fBodyBodyGyroMagMean"        
[75] "fBodyBodyGyroMagStd"          "fBodyBodyGyroMagMeanFreq"    
[77] "fBodyBodyGyroJerkMagMean"     "fBodyBodyGyroJerkMagStd"     
[79] "fBodyBodyGyroJerkMagMeanFreq"


