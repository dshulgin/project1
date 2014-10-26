
# ui.R
library (shiny)
shinyUI(fluidPage(
  titlePanel("Dynamics of morbidity Belarus (carcinoma, 1989 - 2005)"),
  
  
  sidebarLayout(
    sidebarPanel(
      img(src = "Belmap.png"),
      br(),
      br(),
      br(),
      selectInput("Area", "Choose a needed district:",choices = clusters$name, selected = "Минск"),
      br()
  
     
         
                 ),
  
      
    mainPanel(plotOutput("plot1")),
     
  )
))