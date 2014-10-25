library(lattice)
showLR <- function(X,Y){
  #library("lattice")
  dat <- data.frame( x=X, y=Y, gp=1 )
  xyplot( y ~ x, dat, group=gp, type='b', 
          panel = function(...) {
              panel.abline(h = 3.628123, col = "red")
              panel.xyplot(...)  }  )
  
}
 