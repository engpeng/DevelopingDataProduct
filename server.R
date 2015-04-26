#project - server

library(shiny)

# function to turn input into output
hoursNeeded<-function(hours,days) (56-hours)/(7-days)

# what to print
shinyServer(
  function(input,output){
    output$inputValue1<-renderPrint({input$hours})
    output$inputValue2<-renderPrint({input$days})
    output$hoursToSleep<-renderPrint({hoursNeeded(input$hours,input$days)})
  }
)
