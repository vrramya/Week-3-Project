source("download_data.R")
source("merge_data.R")
source("average_data.R")

# Runs the full analysis
# merging the test and train datasets
#Outputs the new
# dataset at ./averages.txt
RunAnalysis <- function() {
  DownloadData()
  dataset <- AverageData(MergeData())
  write.table(dataset, "./averages.txt", sep=",", row.names=FALSE, quote=FALSE)
}

RunAnalysis()
