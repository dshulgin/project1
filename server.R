# server.R
library (shiny)
i = 1  
result <- MaxSPRT(res[,3,],res[,2,],I)
shinyServer(
  function(input, output) {
    
    output$plot1 <- renderPlot(showLR(c(1:17),result[1:17]))
    

  }
  

)
