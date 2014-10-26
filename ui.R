
# ui.R
library (shiny)
shinyUI(fluidPage(
  titlePanel("Dynamics of morbidity Belarus (carcinoma, 1989 - 2005)"),
  
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Area", "Choose a needed district:",choices = clusters$name, selected = "Минск"),
      br(),
      br(),
      br(),
      img(src = "cat2.png"),
      br(),
      br(),
      br()
     
         
                 ),
  
      
    mainPanel(plotOutput("plot1")),
     
  )
))