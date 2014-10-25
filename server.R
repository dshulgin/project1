# server.R
library (shiny)


shinyServer(
  
  
  function(input, output) {    
    output$plot1 <- renderPlot({
      
      number = clusters[clusters$name == input$Area ,1]
      print(input$Area)
      time = 17
      mu_t = c(data[number,"cases"])
      c_t = c(data[number,"cases"])
      i = 1
      while(i <= time){
        c_t = append(c_t,data[number + count*i,"cases"])
        mu_t = append(mu_t,data[number + count*i,"cases"] + mu_t[i])
        i = i + 1
        
      }
      i = 1  
      total <- MaxSPRT(c_t,mu_t)
      showLR(c(1:17),total[1:17])
  
      
      
    })
  }
  

)
