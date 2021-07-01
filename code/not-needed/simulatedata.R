library(MASS)

setwd("C:/Users/mg15613/OneDrive - University of Bristol/Documents/Code Ocean/Data")

set.seed(5)
# create the variance covariance matrix
sigma<-rbind(c(1, 0.8), c(0.8, 1))
# create the mean vector
mu<-c(0, 0) 
# generate the multivariate normal distribution
df<-as.data.frame(mvrnorm(n=1000, mu=mu, Sigma=sigma))
names(df)<-c("std.BF", "std.IQ")
write.table(df, "SimulatedUKData.txt", row.names = FALSE, quote = F)

set.seed(10)
# create the variance covariance matrix
sigma2<-rbind(c(1, 0), c(0, 1))
# create the mean vector
mu2<-c(0, 0) 
# generate the multivariate normal distribution
df2<-as.data.frame(mvrnorm(n=1000, mu=mu2, Sigma=sigma2))
names(df2)<-c("std.BF", "std.IQ")
write.table(df2, "SimulatedBrazilData.txt", row.names = FALSE, quote = F)
