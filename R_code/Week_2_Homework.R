csu<-read.csv("data/california-state-university-2015.csv")
to.plot<-csu$Base.Pay[csu$Job.Title=="LECTURER - ACADEMIC YEAR"]
boxplot(to.plot,main="Lecturer - Academic Year",ylab="Base Pay ($)",col="springgreen")