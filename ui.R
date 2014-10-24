
# ui.R
library (shiny)
shinyUI(fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel(selectInput("Area", "Choose a dataset:",choices = c("rock", "pressure", "cars"))),
      
    mainPanel(plotOutput("plot1"))
  )
))