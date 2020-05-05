complete <- function(directory, id=1:332){
  
  #filelist stores the list of all csv files present in specdata folder 
  filelist <- list.files(path=directory, pattern=".csv")
  
  #totalvec stores the total number of complete cases in all csv files
  totalvec <- numeric()
  
  #run a for-loop to iterate through all 332 csv files in specdata and store in numeric() vector
  for(i in id) {
    
    #store csv file temporarly in data var
    data <- read.csv(filelist[i])
    
    #totalvec contains completecases of all csv files
    totalvec <- c(totalvec, sum(complete.cases(data)))
  }
  
  #create a dataframe from list totalvec
  data.frame(id, totalvec)
}

