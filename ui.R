library(shiny)
library(plotly)
shinyUI(
  fluidPage(titlePanel(title="Data Analysis"),
            sidebarLayout(sidebarPanel(
              selectInput("sel","Select One",choices = colnames(IInd[,c(5:23,25:27,29:53)]))
            ,
            selectInput("s","NO Touch",choices = colnames(IInd[,3]) )),
            mainPanel(h4("MEAN,MEDIAN,MIN AND MAX",align="center"),
                    plotlyOutput("plot1")
                      # h1("This is Bar Ploting of Test Data",align="center") ,
                      # plotOutput("plot2")
                      #   h1("This is Bar Ploting of Test Data",align="center"),
                      #tableOutput("Plot3")
                      
            )))
  
)

