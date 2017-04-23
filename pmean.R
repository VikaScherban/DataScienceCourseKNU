pmean <- function(directory, pollutant, id=1:332){
  filenames_l <- sprintf("%03d.csv", id)
  filenames_p <- file.path(directory, filenames_l)
  data_frames_l <- lapply(filenames_p, read.csv)
  # Add all data frames from the list into one frame
  all_frames <- do.call("rbind", data_frames_l)
  mean(all_frames[[pollutant]], na.rm = TRUE)
}

complete <- function(directory, id){
  filenames_l <- sprintf("%03d.csv", id)
  filenames_p <- file.path(directory, filenames_l)
  data_frames_l <- lapply(filenames_p, read.csv)
  # Find complete cases for every file
  cc <- lapply(data_frames_l, complete.cases)
  # Find the sum of complete cases in every file
  cc_sum <- lapply(cc, sum)
  # Write to result data frame
  data.frame(name = id, observ = I(cc_sum))
}

corr <- function(directory, threshold=0){
  # Path for *.csv file in directory
  filenames_p <- list.files(directory, pattern="*.csv", full.names=TRUE)
  # List of data frames and read csv files 
  data_frames_l <- lapply(filenames_p, read.csv)
  # New vector, contains results
  res <- c()
  # Go through all data frame list
  for (data_frame in data_frames_l){
    # If the number of complete cases in the data_frame is > threshold
    if (sum(complete.cases(data_frame)) > threshold){
      # Add corelation between sulfate and nitrate to the result vector
      res<-c(res, cor(data_frame[['sulfate']], data_frame[['nitrate']], use='pairwise.complete.obs'))
    }
  }
  return(res)
}
