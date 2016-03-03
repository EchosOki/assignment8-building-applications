# Server.r
# Read in data
library(plotly)
library(shiny)
library(dplyr)


  
shinyServer(function(input, output) {
  # Create scatterplot using Plotly
  output$scatter <- renderPlotly({
    #fix names
    ynam <- gsub("\\.", " ", input$yvar)
    xnam <- gsub("\\.", " ", input$xvar)
    yax <- list(title = ynam)
    xax <- list(title = xnam)
    
    plot_ly(iris, x = eval(parse(text=input$xvar)), y = eval(parse(text=input$yvar)), mode = "markers", color = Species) %>%
      layout(xaxis = xax, yaxis = yax)
  })
})