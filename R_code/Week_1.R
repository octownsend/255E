x=2
x
myvector<-c(1,20,300,40,5,0.6,7.1,8.23,9.45,10.678)
myvector
myvector[4]
myvector[6:9]
myvector[myvector>10]
length(myvector[myvector>10])
df<-read.csv(file.choose())
df
head(df)
str(df)
df$Sex
df$Sex[2]
df$Sex[2:5]
rttr01$Date
df[2,1:3]
df[2,]
df[,1]
df$Snout.Vent.Length..mm.[(df$Snout.Vent.Length..mm.>79.1) & (df$Snout.Vent.Length..mm.<88.0)]
df1<-read.csv(file.choose())

output<-vector(length=0) #create an empty vector to print values into
# if (this thing is true) then {do some stuff}

for(i in 1:nrow(df1)){
  if (df1$Type[i]=="Min"){
    print(df1$Value[i])
    output<-c(output,df1$Value[i])
  }
}
output
mean(output)

# another way to get just the min values
df1$Value[df1$Type=="Min"]
output2<-df1$Value[df1$Type=="Min"]
mean(output)
mean(output2)

hist(df$Snout.Vent.Length..mm.,col = 6)
dotchart(df$Snout.Vent.Length..mm.,groups=df$Sex,color = 6,pch=16,xlab="Snout Vent Length (mm)",ylab="Sex")
