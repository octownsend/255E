library(RColorBrewer)
display.brewer.all()
brewer.pal('Dark2', n=8)
cols = brewer.pal('Dark2', n=8)
cols[1]
#using the HEX value from cols
plot(x=1,y=1,col="#E7298A",type = "p",pch=19,cex=5)

#subset value from cols
plot(x=1,y=1,col=cols[3],type = "p",pch=19,cex=5)
plot(x=1,y=1,col=cols[6],type = "p",pch=17,cex=5)

#using the rgb() function
plot(x=1,y=1,col=rgb(0.5,0.5,0),type = "p",pch=19,cex=5)
plot(x=1,y=1,col=rgb(1,0,0.8),type = "p",pch=19,cex=5)
plot(x=1,y=1,col=rgb(0,0.8,0.5),type = "p",pch=19,cex=5)

#use color values from colorbrewer2.org
plot(x=1,y=1,col=rgb(166,206,227, maxColorValue = 255),type = "p",pch=19,cex=5)

#overlap a point of another color
plot(x=1,y=1,col=rgb(166,206,227, maxColorValue = 255),type = "p",pch=19,cex=5)
points(x=1.01,y=1.02,col=rgb(124,98,145, maxColorValue = 255),pch=19,cex=5)

#change transparency of second point by adding 2 digits to the end of the HEX value
plot(x=1,y=1,col="#E7298A",type = "p",pch=19,cex=5)
points(x=1.02,y=1.03,col="#A6761DE2",type = "p",pch=19,cex=5)

