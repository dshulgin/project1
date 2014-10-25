#preparing the dataset

count = 119
wb = loadWorkbook("carcinoma.xlsx")
data = readWorksheet(wb, sheet = 2)
clusters = readWorksheet(wb, sheet = 1)


#cleaning names
i = 1
while(i <= count){
  clusters[i,2] =  gsub(" ","", clusters[i,2]  , fixed=TRUE)  
  
  i = i + 1
}

 
I = seq(119, 2023, by = 119)
 

 