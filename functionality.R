#MaxSPRT algo
MaxSPRT <- function(c,mu){
  i = 1
  N = time
  result <- rep(0,time-1)
  years <- seq(1,time-1,1)
  ####################
  if(c[i] != 0){    
    z = (mu[i]/years[i] - c[i]) + c[i]*log(c[i]/(mu[i]/years[i]))
  }else{
    z = mu[i]/years[i] - c[i]
  }
  #########################
  result[i] <- z
  while(i < N){
    ##########################
    if(z > alpha_criteria){
      z = 0
    }
    ##########################
    i = i + 1
    ##########################
    if(c[i] != 0){
      
      z = z + (mu[i]/years[i] - c[i]) + c[i]*log(c[i]/(mu[i]/years[i]))
    }else{
      z = z + mu[i]/years[i] - c[i]
    }
    ##########################
    
    result[i] <- z  
    
  }
  return(result)
}

# number = 119
# time = 16
# mu_t = c(data[number,"cases"])
# c_t = c(data[number,"cases"])
# i = 1
# while(i <= time){
#   c_t = append(c_t,data[number + count*i,"cases"])
#   mu_t = append(mu_t,data[number + count*i,"cases"] + mu_t[i])
#   i = i + 1
#   
# }