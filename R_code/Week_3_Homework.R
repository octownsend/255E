setwd("~/Desktop/255E")
df<-read.csv("data/california-state-university-2015.csv")
levels(df$Job.Title)

admin1<-df$Base.Pay[df$Job.Title=="ADMINISTRATOR I"]
admin2<-df$Base.Pay[df$Job.Title=="ADMINISTRATOR II"]
admin3<-df$Base.Pay[df$Job.Title=="ADMINISTRATOR III"]
admin4<-df$Base.Pay[df$Job.Title=="ADMINISTRATOR IV"]

options(scipen = 5)
boxplot(admin1,admin2,admin3,admin4,names=c("Admin I","Admin II"
              ,"Admin III","Admin IV"),cex.axis=0.9,ylab="Base Pay ($)",
              xlab="Job Title",col=c("mistyrose","lightpink","hotpink",
              "violetred"))

means<-print(c(mean(admin1),mean(admin2),mean(admin3),mean(admin4)))

mean(admin1)
mean(admin2)
mean(admin3)
mean(admin4)

