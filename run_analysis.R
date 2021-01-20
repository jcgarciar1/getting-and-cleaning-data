url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url,'./data.zip')
unzip("data.zip", exdir = getwd())

feat <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = ' ')
feat <- as.character(feat[,2])
entrenaX <- read.table('./UCI HAR Dataset/train/X_train.txt')
entrenaY<- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
sujetoEntrena <- read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')
datos <-  data.frame(sujetoEntrena, entrenaY, entrenaX)
names(datos) <- c(c('sujeto', 'actividad'), feat)
x <- read.table('./UCI HAR Dataset/test/X_test.txt')
actividades <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
testSujeto <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')

test <-  data.frame(testSujeto, actividades, x)
names(test) <- c(c('sujeto', 'actividad'), feat)

merged <- rbind(datos, test)

# Mean and Standard deviation for each measurement
merged[sapply(colnames(merged), function)]

question2 <- grep('mean|std', feat)
answer2 <- merged[,c(1,2,question2 + 2)]

nombres <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
nombres <- as.character(nombres[,2])
answer2$actividad <- nombres[answer2$actividad]

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

answ <- aggregate(answer2[,3:81], by = list(actividad = answer2$actividad, subject = answer2$sujeto),FUN = mean)
write.table(x = answ, file = "dataset.txt", row.names = FALSE)
