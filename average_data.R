library(reshape2)
AverageData <- function(dataset) {
  molten <- melt(dataset, id.vars=c("subject", "activity"))
  dcast(molten, subject + activity ~ variable, mean)
}
