
# ui.R
library (shiny)
shinyUI(fluidPage(
  titlePanel("Dynamics of morbidity Belarus (carcinoma, 1989 - 2005)"),
  
  sidebarLayout(
    sidebarPanel(selectInput("Area", "Choose a needed district:",choices = clusters$name, selected = "Минск")),
      
    mainPanel(plotOutput("plot1"))
  )
))