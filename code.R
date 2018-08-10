library(readxl)
IInd <- read_excel("E:/MCA assignment1/IInd.xlsx", 
                   col_types = c("numeric", "text", "numeric", 
                                 "text", "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "text", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric", "numeric", 
                                 "numeric", "numeric"))
View(IInd)
g<-aggregate(OS_INT~Year,IInd,FUN = max )
gg<-aggregate(OS_INT~Year,IInd,FUN = min )
ggg<-aggregate(OS_INT~Year,IInd,FUN = min )
gggg<-aggregate(OS_INT~Year,IInd,FUN = mean )
library(plotly)
Year<-g$Year
max1<-g$OS_INT
max1
min1<-gg$OS_INT
mean1<-gggg$OS_INT
mean1
median1<-ggg$OS_INT

