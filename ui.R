
# ui.R
library (shiny)
shinyUI(fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel(selectInput("Area", "Choose a needed area:",choices = clusters$name, selected = "Минск")),
      
    mainPanel(plotOutput("plot1"))
  )
))