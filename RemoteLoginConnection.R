# 1        Conexion que genera promp user/pass



remoteLogin("http://lon-hadoop-03.westeurope.cloudapp.azure.com:12800", 
            session = TRUE)

# Conexion directa especificando server /usuario /clave

remoteLogin(
  deployr_endpoint = "http://lon-hadoop-03.westeurope.cloudapp.azure.com:12800", 
  session = TRUE, 
  diff = TRUE, 
  commandline = TRUE, 
  username = "admin", 
  password = "Pa55w.rd")


# listo vairables creadas en local  /remoto 

ls()

# cambio de contexto a local  pausando conexion remota 

pause()

resume()




#Ejemplos de uso local

x<-rnorm(1000)

hist(x)
histogram(x)





# Create a local data frame
DF <- data.frame(sex = c("Male", "Male", "Female", "Male"),
                 age = c(20, 20, 12, 10), score = 1.1:4.1)
summary(DF)




# get summary of sex variable
library(RevoScaleR)
library(dplyr)
rxSummary(~ sex, DF)
# obtain within sex-category statistics of the score variable
rxSummary(score ~ sex, DF)


# revisar que ejemplo hay cargados en la carpeta de samples 
readPath <- rxGetOption("sampleDataDir")
readPath



Command <- paste("ls", readPath, sep="  -")
mysamplefilepath <- paste(readPath, "CensusWorkers.xdf" ,sep="/") 

mysamplefilepath



# Create a data source for the CensusWorkers.xdf file
workerInfo <- RxXdfData(mysamplefilepath)

# Perform functions that read from the CensusWorkers.xdf file
head(workerInfo, 100)
rxSummary(~., workerInfo)



Command
getwd()

system(Command,show.output.on.console=TRUE)
list.dirs(path = readPath, full.names = TRUE, recursive = FALSE)









exit
remoteLogout() 



your_name <- "pabloA"
your_dir <- paste0('/usr/datadrive/', your_name)
# File Path to your Data
your_data <- file.path(your_dir, 'tripdata_2015.xdf')
your_dir
dir.create(your_dir)








