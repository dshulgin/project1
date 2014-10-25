#MaxSPRT algo
MaxSPRT <- function(data, I){
  N = length(I)
  result <- rep(0,17)
  years <- seq(1,17,1)
  z =  data[I[i],"mu_t"]/years[i] - data[I[i],"c_t"] + 
       data[I[i],"c_t"]*log(data[I[i],"c_t"]/(data[I[i],"mu_t"]/years[i]))
 
  result[i] <- z
  
  while(i < N){
    i = i + 1
    z = z +  data[I[i],"mu_t"]/years[i] - data[I[i],"c_t"] + 
             data[I[i],"c_t"]*log(data[I[i],"c_t"]/(data[I[i],"mu_t"]/years[i]))
    result[i] <- z  
    print (result[i])
    
  }
  return(result)
}