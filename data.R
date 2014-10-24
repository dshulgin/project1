#preparing the dataset
#X = rpois(10000, 12.4577)

#dat <- data.frame( x=rep(1:51), y=result[1:50], gp=1 )
#xyplot( y ~ x, dat, group=gp, type='b' )
res <- read.xlsx("I:/диплом/carcinoma.xlsx", 2,colIndex=c(2,5,6)) # read the second sheet
res2 <- read.xlsx("I:/диплом/carcinoma.xlsx", 1,colIndex=c(1,2)) # read the first sheet
test.txt <- read.table("I:/диплом/carcinoma3.txt", header=T)

 
I = seq(119, 2023, by = 119)
