library(readxl)
setwd("~/Desktop/255E")
df<-read_excel(path = "data/Reinhart-Rogoff.xlsx",na='n.a.')
mean(df$`90 or above`,na.rm=TRUE)
## back-tick quotes for column names with spaces!!
## to make their mistake in R: mean(df$`90 or above`[1:15],na.rm=TRUE)

#####Quality checking#####
df<-read.csv("data/Messy_means2.csv")
dotchart(df$Value)
#dotchart shows one very large value and one very small value that are
#suspect. Let's remove those two values by turning them to NA

which.min(df$Value) #gives you the row number with the lowest value
df[48,"Value"]=NA

which.max(df$Value) #gives you the row number with the highest value
df[22,"Value"]=NA
df[which.max(df$Value,na.rm=TRUE),"Value"]=NA #doing the same thing as above but in 
  #one line and is also more reliable in case the row number changes!
dotchart(df$Value) #plot completely changes

### 2 ways to get the values for the rows where Type is Mean
mymeans<-df$Value[df$Type=="Mean"]
df[df$Type=="Mean","Value"]

mean(mymeans)
#########################################

df<-read_excel("data/Heating_trial_info.xlsx")
str(df)
# some columns (3-8) should be factors, not characters
df[,3:8] = lapply(df[,3:8],factor)

levels(df$TCchannel)
levels(df$MusselTagID)
levels(df$`Gaping?`)

summary(df)
summary(df$MusselTagID)
#gives you the number of rows containing each mussel tag id
summary(df$TrialNumber)

table(df$AliveDead)
table(df$TCLocation)

# use xtabs() to make a contigency table of counts of factors
xtabs(~AliveDead+MusselTagID,data=df)

####Joining Files#### !!!!!!!!
#Read in one file
svl1<-read.csv("data/SVLCallisaurus.csv")
str(svl1)
#Read in the other
svl2<-read.csv("data/SVLCallisaurus2.csv")
str(svl2)

svlAll<-rbind(svl1,svl2)
colnames(svl1)=c("Animal.ID","Sex","SVL.mm")
colnames(svl2)=c("Animal.ID","Sex","SVL.mm")

#Save the joined files as a new csv file
write.csv(x=svlAll,file = "SVLjoined.csv",row.names = FALSE)

#################################
boxplot(SVL.mm~Sex,data=svlAll,xlab="Sex",ylab="Snout-vent length (mm)")
















