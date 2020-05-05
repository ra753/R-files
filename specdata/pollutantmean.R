pollutantmean <- function(directory, pollutant, id=1:332 ) {
  
  #create a list of all csv files in specdata
  filelist <- list.files(path=directory, pattern=".csv")
  
  #list to hold all the pollutant values
  pollutantlist <- numeric()
  
  #run a loop to get pollutant data as per id passed
  for(i in id) {
    data <- read.csv(filelist[i])
    pollutantlist <- c(pollutantlist, data[[pollutant]])
  }
  
  #na.omit(pollutantlist)
  mean(pollutantlist, na.rm=TRUE)
}



