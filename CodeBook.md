# CodeBook

Further explanation of the data can be read in the README in the zipped data, "Human Activity Recognition Using Smartphones Dataset - Version 1.0"

The data was transformed in the following ways:

If the required data is not present, the data is pulled from source and unzipped 
with no modifications.

The following tables are read via "read.table"

1) activity_labels.txt
2) features.txt
3) X_train.txt
4) y_train.txt
5) subject_train.txt
6) X_test.txt
7) y_test.txt
8) subject_test.txt

The data frame created from features is used as the variable names in the X-test and training data frames.  "Index" is used as the col.name for the Y-test and training data to tie that back to the data frame created from the activity_labels.txt.
 
The Training and Test rows is combined, then the X- and Y- sets columns are combined with the Subject columns.

The columns are then reduced to those related to the Mean and Standard Deviation,
reducing the variable count from 563 to 88.

For each row, the Activity Index Number is changed to the actual name of the Activity, and index is changed to Activity.  The Activity names are referenced from
activity_labels.txt

The variable names are changed to make them more understandable, these changes are tabulated at the end of the document.  Most of the changes revolve around unifying to the greatest extent possible the format, capitals with no spaces, and expanding abbreviations like "acc" to "Accelometer"

A final tidy data table called "data_final" is created grouping the data on Subject and Activity and summarizing the mean of all the grouped variables.


# Variable Table

|*Original*							  |	*New*											 |
|:------------------------------------|:-------------------------------------------------|
|subject 			                  |  Subject                      					 |
|index                           	  |	Activity       									 |
|tBodyAcc.mean...X 			          |	TimeBodyAccelerometerMean-X    					 |
|tBodyAcc.mean...Y 			          |	TimeBodyAccelerometerMean-Y      				 |
|tBodyAcc.mean...Z  			      |	TimeBodyAccelerometerMean-Z    					 |
|tGravityAcc.mean...X 			      |	TimeGravityAccelerometerMean-X   				 |
|tGravityAcc.mean...Y 			      |	TimeGravityAccelerometerMean-Y 					 | 
|tGravityAcc.mean...Z  			      |	TimeGravityAccelerometerMean-Z 					 |
|tBodyAccJerk.mean...X  		      |	TimeBodyAccelerometerJerkMean-X          		 |  
|tBodyAccJerk.mean...Y 			      |	TimeBodyAccelerometerJerkMean-Y      			 |
|tBodyAccJerk.mean...Z  		      |	TimeBodyAccelerometerJerkMean-Z      			 |  
|tBodyGyro.mean...X 			      |	TimeBodyGyroscopeMean-X                          |   
|tBodyGyro.mean...Y               	  |	TimeBodyGyroscopeMean-Y 						 |
|tBodyGyro.mean...Z  			      | TimeBodyGyroscopeMean-Z              			 |   
|tBodyGyroJerk.mean...X  		      |	TimeBodyGyroscopeJerkMean-X         			 |   
|tBodyGyroJerk.mean...Y      		  | TimeBodyGyroscopeJerkMean-Y        				 |
|tBodyGyroJerk.mean...Z      		  |	TimeBodyGyroscopeJerkMean-Z        				 |
|tBodyAccMag.mean..           		  |	TimeBodyAccelerometerMagnitudeMean..  			 |       
|tGravityAccMag.mean..         		  |	TimeGravityAccelerometerMagnitudeMean.. 		 |        
|tBodyAccJerkMag.mean..         	  |	TimeBodyAccelerometerJerkMagnitudeMean.. 		 |        
|tBodyGyroMag.mean..              	  |	TimeBodyGyroscopeMagnitudeMean..  				 |
|tBodyGyroJerkMag.mean..         	  |	TimeBodyGyroscopeJerkMagnitudeMean..  			 |
|fBodyAcc.mean...X               	  |	FrequencyBodyAccelerometerMean-X   				 |
|fBodyAcc.mean...Y                	  |	FrequencyBodyAccelerometerMean-Y         		 |
|fBodyAcc.mean...Z                	  |	FrequencyBodyAccelerometerMean-Z 				 |
|fBodyAcc.meanFreq...X            	  |	FrequencyBodyAccelerometerMeanFreq-X  			 |
|fBodyAcc.meanFreq...Y            	  |	FrequencyBodyAccelerometerMeanFreq-Y     		 |
|fBodyAcc.meanFreq...Z            	  |	FrequencyBodyAccelerometerMeanFreq-Z   			 |
|fBodyAccJerk.mean...X            	  |	FrequencyBodyAccelerometerJerkMean-X   			 |
|fBodyAccJerk.mean...Y            	  |	FrequencyBodyAccelerometerJerkMean-Y   			 |
|fBodyAccJerk.mean...Z            	  |	FrequencyBodyAccelerometerJerkMean-Z     		 |  
|fBodyAccJerk.meanFreq...X        	  |	FrequencyBodyAccelerometerJerkMeanFreq-X  		 |
|fBodyAccJerk.meanFreq...Y        	  |	FrequencyBodyAccelerometerJerkMeanFreq-Y  		 |
|fBodyAccJerk.meanFreq...Z        	  |	FrequencyBodyAccelerometerJerkMeanFreq-Z 		 |
|fBodyGyro.mean...X    			      |	FrequencyBodyGyroscopeMean-X        			 |         
|fBodyGyro.mean...Y               	  |	FrequencyBodyGyroscopeMean-Y   					 |
|fBodyGyro.mean...Z               	  | FrequencyBodyGyroscopeMean-Z   					 |
|fBodyGyro.meanFreq...X           	  |	FrequencyBodyGyroscopeMeanFreq-X    			 |
|fBodyGyro.meanFreq...Y           	  |	FrequencyBodyGyroscopeMeanFreq-Y    			 |
|fBodyGyro.meanFreq...Z           	  |	FrequencyBodyGyroscopeMeanFreq-Z   				 |
|fBodyAccMag.mean..               	  |	FrequencyBodyAccelerometerMagnitudeMean.. 		 |   
|fBodyAccMag.meanFreq..           	  |	FrequencyBodyAccelerometerMagnitudeMeanFreq.. 	 |
|fBodyBodyAccJerkMag.mean..       	  |	FrequencyBodyAccelerometerJerkMagnitudeMean..  	 |
|fBodyBodyAccJerkMag.meanFreq..   	  |	FrequencyBodyAccelerometerJerkMagnitudeMeanFreq..|
|fBodyBodyGyroMag.mean..          	  |	FrequencyBodyGyroscopeMagnitudeMean..   		 |
|fBodyBodyGyroMag.meanFreq..      	  |	FrequencyBodyGyroscopeMagnitudeMeanFreq.. 		 |
|fBodyBodyGyroJerkMag.mean..      	  |	FrequencyBodyGyroscopeJerkMagnitudeMean..    	 |
|fBodyBodyGyroJerkMag.meanFreq..  	  |	FrequencyBodyGyroscopeJerkMagnitudeMeanFreq.. 	 |
|angle.tBodyAccMean.gravity.      	  |	AngleTimeBodyAccelerometerMean.gravity.   		 |
|angle.tBodyAccJerkMean..gravityMean. |	AngleTimeBodyAccelerometerJerkMean..gravityMean. | 
|angle.tBodyGyroMean.gravityMean.     |	AngleTimeBodyGyroscopeMean.gravityMean.  		 |  
|angle.tBodyGyroJerkMean.gravityMean. |	AngleTimeBodyGyroscopeJerkMean.gravityMean.		 | 
|angle.X.gravityMean.             	  |	AngleX.gravityMean. 							 |
|angle.Y.gravityMean.             	  |	AngleY.gravityMean. 							 |
|angle.Z.gravityMean.             	  |	AngleZ.gravityMean.								 |
|tBodyAcc.std...X                 	  |	TimeBodyAccelerometer.std-X  					 |
|tBodyAcc.std...Y               	  |	TimeBodyAccelerometer.std-Y   					 |
|tBodyAcc.std...Z                  	  |	TimeBodyAccelerometer.std-Z 					 |
|tGravityAcc.std...X              	  |	TimeGravityAccelerometer.std-X  				 |
|tGravityAcc.std...Y               	  |	TimeGravityAccelerometer.std-Y 					 |
|tGravityAcc.std...Z               	  |	TimeGravityAccelerometer.std-Z 					 |
|tBodyAccJerk.std...X                 | TimeBodyAccelerometerJerk.std-X 				 |
|tBodyAccJerk.std...Y              	  |	TimeBodyAccelerometerJerk.std-Y  				 | 
|tBodyAccJerk.std...Z              	  |	TimeBodyAccelerometerJerk.std-Z  				 |  
|tBodyGyro.std...X                    | TimeBodyGyroscope.std-X      					 |
|tBodyGyro.std...Y                 	  |	TimeBodyGyroscope.std-Y    						 |
|tBodyGyro.std...Z                    |	TimeBodyGyroscope.std-Z   						 |
|tBodyGyroJerk.std...X             	  |	TimeBodyGyroscopeJerk.std-X   					 |  
|tBodyGyroJerk.std...Y             	  | TimeBodyGyroscopeJerk.std-Y 					 |
|tBodyGyroJerk.std...Z             	  |	TimeBodyGyroscopeJerk.std-Z 					 |
|tBodyAccMag.std..                 	  |	TimeBodyAccelerometerMagnitude.std.. 			 | 
|tGravityAccMag.std..              	  |	TimeGravityAccelerometerMagnitude.std..    		 |
|tBodyAccJerkMag.std..             	  |	TimeBodyAccelerometerJerkMagnitude.std..   		 |
|tBodyGyroMag.std..                	  |	TimeBodyGyroscopeMagnitude.std..      			 |
|tBodyGyroJerkMag.std..            	  |	TimeBodyGyroscopeJerkMagnitude.std..    		 |    
|fBodyAcc.std...X                     | FrequencyBodyAccelerometer.std-X  				 |
|fBodyAcc.std...Y                  	  |	FrequencyBodyAccelerometer.std-Y   				 |
|fBodyAcc.std...Z                  	  |	FrequencyBodyAccelerometer.std-Z      			 |
|fBodyAccJerk.std...X              	  |	FrequencyBodyAccelerometerJerk.std-X    		 |
|fBodyAccJerk.std...Y              	  |	FrequencyBodyAccelerometerJerk.std-Y  			 |
|fBodyAccJerk.std...Z              	  |	FrequencyBodyAccelerometerJerk.std-Z  			 |   
|fBodyGyro.std...X                 	  |	FrequencyBodyGyroscope.std-X     				 |
|fBodyGyro.std...Y                 	  |	FrequencyBodyGyroscope.std-Y   					 |
|fBodyGyro.std...Z                 	  |	FrequencyBodyGyroscope.std-Z 					 |
|fBodyAccMag.std..                 	  |	FrequencyBodyAccelerometerMagnitude.std..  		 |
|fBodyBodyAccJerkMag.std..       	  |	FrequencyBodyAccelerometerJerkMagnitude.std..  	 |
|fBodyBodyGyroMag.std..          	  |	FrequencyBodyGyroscopeMagnitude.std..   		 |
|fBodyBodyGyroJerkMag.std..     	  |	FrequencyBodyGyroscopeJerkMagnitude.std..     	 |

