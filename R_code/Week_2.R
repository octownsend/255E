### get access to read.xlsx function
### install.packages("xlsx")
library(xlsx)
install.packages("rJava")

setwd("~/Desktop/255E_Fall 2017/Data")
setwd("~/Desktop/255E_Fall 2017/R_code")
df<-read.csv("../Data/SVLCallisaurus.csv")
### Or....
df<-read.table("../Data/SVLCallisaurus.csv",header = TRUE,
               sep = ",")

ht<-read.xlsx("../Data/Heating_trial_info.xlsx",sheetIndex = 1)

### Import tab-delmited data file
limp<-read.table(file = "../Data/LimpetRaspingRate.txt",header = TRUE,
                 sep = "\t")
boxplot(limp$Growth)

test<-readLines(con = "../Data/CDIP_158_201702.txt")
test[1]
test[2]
test[3]

### Plotting
dotchart(limp$Temperature)
dotchart(limp$Temperature,groups = limp$Species,xlab = "Temperature (C)",ylab = "Species")
plot(limp$Temperature,limp$RaspRate,xlab = "Temperature (C)",
     ylab = "Rasping Rate (rasps/min)",col="violetred",pch=16)
colors()

plot(limp$Temperature[limp$Species=="pelta"],limp$RaspRate[limp$Species=="pelta"],
     xlab = "Temperature (C)",ylab = "Rasping Rate (rasps/min)",
     col="violetred",pch=2,xlim = range(limp$Temperature),
     ylim = range(limp$RaspRate))
points(limp$Temperature[limp$Species=="scabra"],
       limp$RaspRate[limp$Species=="scabra"],col="royalblue",pch=10)
legend(x=6.5,y=29,legend = c("pelta","scabra"),pch = c(2,10),
       col = c("violetred","royalblue"))

### Homework
#code to import data using relative path
#csu<-read.csv("./data/california-state-university-2015.csv")
#boxplot with proper y-axis label, titled with Job Title
setwd("~/Desktop/255E")
csu<-read.csv("data/california-state-university-2015.csv")
to.plot<-csu$Base.Pay[csu$Job.Title=="LECTURER - ACADEMIC YEAR"]
boxplot(to.plot,ylab="Base Pay ($)",main="Lecturer - Academic Year",col="springgreen")
