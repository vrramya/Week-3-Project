source("download_data.R")
source("merge_data.R")
source("average_data.R")

RunAnalysis <- function() {
  DownloadData()
  dataset <- AverageData(MergeData())
  write.table(dataset, "./averages.txt", sep=",", row.names=FALSE, quote=FALSE)
}

RunAnalysis()
