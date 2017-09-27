myFunction<-function(x){
  #code goes here
}

myFunction<-function(x){
  print(x)
}

myFunction(x=2)
myFunction(x=c(1,2,3,4))

myFunction2<-function(x,y){
  z=x+y
  z
}
myFunction2(2,4)
result<-myFunction2(2,4)

mySE<-function(x){
  #assume the input x is a vector of numbers
  #SE is the square root of (variance over sample size)
  #first calculate the variance
  myvar<-var(x)
  #then calculate the sample size (number of values in sample)
  myn<-length(x)
  #next calculate square root of variance divided by sample size
  mySE<-sqrt(myvar/myn)
  mySE
}
x<-c(1,1,3,3,6,6)
mySE(x)

#make a practice data frame
mydf<-data.frame(Group<-c(rep('A',6),rep('B',6)),
                 Values<-c(1,2,3,4,5,6,11,22,33,44,55,66))
#calculate the SE of group A (rows 1-6)
mySE(mydf$Values[1:6])
#calculate the SE of group B (rows 7-12)
mySE(mydf$Values[7-12])

#now use our custom SE function inside aggregate() to accomplish the same thing
aggregate(Values~Group,data=mydf,FUN = mySE)
