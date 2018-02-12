remoteLogin("http://lon-hadoop-03.westeurope.cloudapp.azure.com:12800", 
            session = TRUE)

x<-rnorm(1000)

hist(x)

remoteLogout()  

remoteLogin(
  deployr_endpoint = "http://lon-hadoop-03.westeurope.cloudapp.azure.com:12800", 
  session = TRUE, 
  diff = TRUE, 
  commandline = TRUE, 
  username = "admin", 
  password = "Pa55w.rd")


