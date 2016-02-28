run_analysis<- function(){
  #Get data from test team and combine them in a dataframe
  sub.t1<- read.table("test\\subject_test.txt")
  set1<- read.table("test\\x_test.txt")
  set1.av<-apply(set1,1,mean)
  set1.sd<- apply(set1,1,sd)
  act1<- read.table("test\\y_test.txt")
  df1<- data.frame(activityCode=act1[[1]],subject=sub.t1[[1]],mean=set1.av,s.d=set1.sd)
  
  #Get data from train team and combine them in a dataframe
  sub.t2<- read.table("train\\subject_train.txt")
  set2<- read.table("train\\x_train.txt")
  set2.av<-apply(set2,1,mean)
  set2.sd<- apply(set2,1,sd)
  act2<- read.table("train\\y_train.txt")
  df2<- data.frame(activityCode=act2[[1]],subject=sub.t2[[1]],mean=set2.av,s.d=set2.sd)
  
  #Combine the two dataframes together
  df<- rbind(df1,df2)
  
  #Get the activity labels and the corresponding code
  act.lbl<- read.table("activity_labels.txt")
  act.lbl<- rename(act.lbl,activityCode=V1,activity=V2)

  #Add the activity label on the dataframe and delete the activityCode
  df<- merge(act.lbl,df,by="activityCode")
  df<- df[,-1]
  
  #Group the data according to subject and activity averaging the combined
  df<- aggregate(df[,c("mean","s.d")],df[,c("subject","activity")],FUN=mean)
  #enhance readability using an appropriate column order
  df<- df[,c("activity","subject","mean","s.d")]
  
  return(df)
}