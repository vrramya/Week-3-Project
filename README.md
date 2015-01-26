# Getting and Cleaning Data: Week 3 Course Project

### download_data.R

checks to see if the original data has already been downloaded, and if not, downloads the ZIP file to
./HAR Dataset.zip, and unzips it to ./UCI HAR Dataset.


### merge_data.R

After downloading the data, RunAnalysis() calls MergeData(),
which is contained in merge_data.R, along with several helper
functions.

mergedata() makes the following calls:

1. ReadFeatures(): This grabs the features from
   ./UCI HAR Dataset/features.txt and reads them into a list.
2. ReadLabels(): This grabs the activity labels from
   /UCI HAR Dataset/activity_labels.txt and reads them into a
   data frame, naming the columns label and activity.
3. ReadDataset(): This is called first with the test dataset, then
   with the train dataset. It takes the X file, containing the sensor
   readings, the y file, containing the activity label for each observation,
   the subject file, It reads
   the X file, y file and subject file into data frames. Next, it sets the
   names of the X dataset to the features list, then appends the y file column,
   and the subject file column to the end. It then merges with the labels data
   frame based on the activity id, which adds the human-readable activity label
   to the dataset.
4. TidyNames():ReadDataset() passes the resulting dataset, selecting
   only the columns containing mean & std  features, along with the
   activity label and the subject, into tidynames(), which normalizes the
   dataset names to be downcased, and to remove all non-alphanumeric characters.
 
5. MergeData() binds the test and train dataset rows together
   and returns the complete, combined dataset.

### run_analysis.R


run_analysis.R is the main point of entry. It sources all other
files in the project, defines the main RunAnalysis() function, and
then calls the RunAnalysis() function.



### average_data.R

After merging the data, RunAnalysis() passes the resulting dataset to
AverageData() , contained in average_data.R AverageData()
uses the reshape2  package to melt the dataset based on subject 
and activity, and then `dcast it together based on those two fields,
providing the mean. The final result is a data frame containing the means of each
of the included features for each combination of subject and activity.

## Output

The final result is output in CSV format to ./averages.txt.
