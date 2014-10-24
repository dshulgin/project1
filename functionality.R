#MaxSPRT algo
MaxSPRT <- function(c,mu, I){
  N = length(I)
  result <- rep(0,17)
  years <- seq(1,17,1)
  z =  (mu[I[i]]/years[i] - c[I[i]]) + c[I[i]]*log(c[I[i]]/(mu[I[i]]/years[i]))
  print (z )#
  result[i] <- z
  
  while(i < N){
    i = i + 1
    z = z + (mu[I[i]]/years[i] - c[I[i]]) + c[I[i]]*log(c[I[i]]/(mu[I[i]]/years[i]))
    result[i] <- z  
    print (result[i])#
    
  }
  return(result)
}