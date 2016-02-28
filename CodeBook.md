#Variables Description
##In the Output
* **activity:** Describes the activity from which the data were extracted. Possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, STANDING, LAYING
* **subject:** Refers to the participant from which the measurement was made. Possible values: 1 until 30
* **mean:** The average of the measurements made for the corresponding participant and activity
* **s.d:** The average of the standard error of the measurement for the corresponding participant and activity

##In the Script

* **sub.t1:** The subjects (participants) as load from the file subject_test.txt 
* **sub.t2:** The subjects (participants) as load from the file subject_train.txt

* **set1:** The dataset for test team as loaded from the file x_test.txt
* **set2:** The dataset for train team as loaded from the file x_train.txt

* **act1:** The activity code corresponding to each measurement for the test team
* **act2:** The activity code corresponding to each measurement for the train team

* **set1.av/set1.sd:** The average and standard deviation as calculated for each measurement for the test team
* **set2.av/set2.sd:** The average and standard deviation as calculated for each measurement for the train team

* **df1/df2:** The datasets created by the combination of the ***sub.t***, ***act***, ***set.av*** and ***set.sd***
* **df:** The final dataset created by putting together ***df1*** and ***df2***. This is the sum of the participants

* **act.lbl:** The activity codes with the description of each
