
# ui.R
library (shiny)
shinyUI(fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel(selectInput("Area", "Choose a needed area:",choices = c("rock", "pressure", "cars"))),
      
    mainPanel(plotOutput("plot1"))
  )
))