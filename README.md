# Assignment_03_04

This is a script file in R. It processes data collected by the gravity sensor and accelerometer of a Samsung Galaxy S II.
30 Volunteers have participated the experiment. They ve been asked to perform 6 activities (walking, walking upstairs, walking
downstais, sitting, standing, laying) during the which the sensors where measuring. Participants were then randomly divided into
two groups (train and test).

The algorithm in the script joins the two groups into a single dataset and gives as output a final dataset with the mean and
standard deviation of the measurements for each activity and for each participant.

The script first reads the subject, dataset and the activity code for the test team and then calculates the mean and standard deviation for each measurement in the dataset. It combines the previous in a dataframe. The same happens for the train team. Thereafter, the two dataframes (the test team and the train team) are combined into a single dataframe. The activity code and the corresponding label is loaded and added to the dataframe. Finally, the data are summarised giving the mean for the avarages and the standard deviation grouped by activity and subject (participant).
