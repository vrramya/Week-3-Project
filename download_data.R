DownloadData <- function() {
  if (!file.exists('./UCI HAR Dataset')) {
    file.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    local.filename <- "HAR Dataset.zip"
    download.file(file.url, local.filename, method="curl")
    unzip(local.filename)
  }
}
