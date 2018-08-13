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
g<-aggregate(`DAA/INT`~Year,IInd,FUN = max )
g
g2<-apply(IInd$`DAA/INT`,list(IInd$Year),max)
?apply

tapply(IInd$OS_INT,IInd$Year,max)
g2<-as.matrix(g2)
g2[,2]
gg<-aggregate(OS_INT~Year,IInd,FUN = min )
ggg<-aggregate(OS_INT~Year,IInd,FUN = min )
gggg<-aggregate(OS_INT~Year,IInd,FUN = mean )
gggg
library(plotly)
library(ggplot2)
Year<-g$Year
ggf<-IInd$Year
length(ggf) 
length(IInd$OS_INT)
max1<-g$OS_INT
max1
min1<-gg$OS_INT 
mean1<-gggg$OS_INT
mean1
median1<-ggg$OS_INT
data11<-data.frame(Year,g1)
p1<-plot_ly(data11,x=~Year,y=~max1,type='bar',name='max'
)%>%add_trace(y=~min1,name="min"
)%>%add_trace(y=~mean1,name="mean"
)%>%add_trace(y=~median1,name='Median'
)%>%layout(yaxis=list(title='Count'),barmode='group')
(p1)


plot.df <- data.frame(IInd[,input$featureInput1],
                      IInd[,input$featureInput2],
                      Class = IInd$Class)
df<-data.frame(d=IInd$Year,f=IInd$OS_INT)
