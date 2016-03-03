library(shiny)
library(plotly)
shinyUI(fluidPage(
  # Create a title
  titlePanel("Iris Details"),
  # Create sidebar layout
  sidebarLayout(
    
    
    # Side panel for controls
    sidebarPanel(
      
      # Input to select variables on plot
      selectInput("xvar", label = h3("X Measurement"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'), 
                  selected = "Petal Length"),
      selectInput("yvar", label = h3("Y Measurement"), 
                  choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length', "Petal Width" = 'Petal.Width'), 
                  selected = "Petal Width")
    ),
    # Main panel: display plotly scatterplot
    mainPanel(h3('Iris Measurements by Species'),
              plotlyOutput('scatter')
    )
  )
)
)