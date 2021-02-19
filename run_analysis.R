
url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
#Download the file from the url
download.file(url,'./data.zip')
#As the file is a zip it needs to be unziped
unzip("data.zip", exdir = getwd())

#Read all the features from the downloaded csv
feat <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
#Take only the names of the features
feat <-unlist((feat['V2']))

#Read the X and Y dataset and the subjects to train
entrenaX <- read.table('./UCI HAR Dataset/train/X_train.txt')
entrenaY<- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
sujetoEntrena <- read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')

#Put all of the data in one data frame
datos <-  data.frame(sujetoEntrena, entrenaY, entrenaX)

#Significant names to the columns
names(datos) <- c(c('sujeto', 'actividad'), feat)

#Read test data
x <- read.table('./UCI HAR Dataset/test/X_test.txt')
actividades <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
testSujeto <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')

#Put all of the data in one data frame
test <-  data.frame(testSujeto, actividades, x)
#Significant names to the columns
names(test) <- c(c('sujeto', 'actividad'), feat)

#Merge train and test data
merged <- rbind(datos, test)

# Mean and Standard deviation for each measurement using grep
question2 <- grep('mean|std', feat)
answer2 <- merged[,c(1,2,question2 + 2)]

#Read the labels
nombres <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
nombres <- unlist(nombres['V2'])
#add the labels to the activity column
answer2$actividad <- nombres[answer2$actividad]

#Change the names of the columns
nuevosNombres <- names(answer2)
nuevosNombres <- gsub("[(][)]", "", nuevosNombres)
nuevosNombres <- gsub("^t", "dominioTiempo", nuevosNombres)
nuevosNombres <- gsub("^f", "dominioFrecuencia", nuevosNombres)
nuevosNombres <- gsub("Acc", "Accelerometro", nuevosNombres)
nuevosNombres <- gsub("Gyro", "Giroscopio", nuevosNombres)
nuevosNombres <- gsub("Mag", "Magnitud", nuevosNombres)
nuevosNombres <- gsub("-mean-", "Media", nuevosNombres)
nuevosNombres <- gsub("-std-", "DesviacionEstandar", nuevosNombres)
nuevosNombres <- gsub("-", "_", nuevosNombres)
names(answer2) <- nuevosNombres

#Use aggregate to split the data into subsets to be exported
answ <- aggregate(answer2[,3:81], by = list(actividad = answer2$actividad, subject = answer2$sujeto),FUN = mean)
#New file with tidy data called "dataset.txt" and as a csv in "dataset.csv"
write.table(x = answ, file = "dataset.txt", row.names = FALSE)
write.table(x = answ, file = "dataset.csv", row.names = FALSE,sep=",")

codebook <- function(...){
  cat(..., "\n",file=paste(getwd(),"codebook.md",sep="/"),append=TRUE, sep="")
}

codebook("") 
codebook("## `resultData` variable\n")
codebook("### key columns\n")
codebook("Variable name       | Description")
codebook("--------------------|------------")
codebook("`subject`           | ID of subject, int (1-30)")
codebook("`activity_num`      | ID of activity, int (1-6)")
codebook("`activity_name`     | Label of activity, Factor w/ 6 levels")

codebook("### non-key columns\n")
codebook("Variable name       | Description")
codebook("--------------------|------------")
codebook("`variable`          | comlete name of the feature, Factor w/ 66 levels (eg. tBodyAcc-mean()-X) ")
codebook("`value`             | the actual value, num (range: -1:1)")
codebook("`dimension`         | dimension of measurement, Factor w/ 2 levels: `t` (Time) or `f` (Frequency)")
codebook("`source`            | source of measurement, Factor w/ 3 levels: `Body`,`BodyBody` or `Gravity`")
codebook("`type`              | type of measurement, Factor w/ 2 levels: `Acc` (accelerometer) or `Gyro` (gyroscope)")
codebook("`jerk`              | is 'Jerk' signal , Factor w/ 2 levels:  `Jerk` or `` (non Jerk)")
codebook("`magnitude`         | is 'Magnitude' value , Factor w/ 2 levels:  `Mag` or `` (non Mag)")
codebook("`method`            | result from method , Factor w/ 2 levels:  `mean` (average) or `std` (standard deviation)")
codebook("`axis`              | FFT exrapolated to axis , Factor w/ 2 levels:  `` (no FFT-axis) or `X`, `Y` or `Z`")

codebook("") 
codebook("## `tidyData` variable\n")
codebook("### key columns\n")
codebook("Variable name       | Description")
codebook("--------------------|------------")
codebook("`activity_name`     | Label of activity, Factor w/ 6 levels")
codebook("`subject`           | ID of subject, int (1-30)")


codebook("### non-key columns\n")
codebook("Variable name       | Description")
codebook("--------------------|------------")
tidyDataCols <- names(answ)[3:68]
for(tdc in tidyDataCols){
  codebook("`",tdc,"`   | the average value for this feature, num (range: -1:1)")
}
