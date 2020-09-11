#Tugas3

#Asumsi
T <- 5
N <- 1000
sim <- 10000
z <- NULL
x <- NULL
t <- NULL
S <- NULL

for (j in 1:sim){
  for (i in 1:N){
    z <- rexp(N,2)
      if (i==1){
      t[1]=z[1]
    }
    else {
      t[i]=t[i-1]+z[i]
    }
    if(t[i]>T){
      break
    }
    x <- sample(c(0.5,1,2),size=length(t),replace=TRUE,prob=c(0.5,0.25,0.25))
  }
  
  if(j<sim){
    S[j]=sum(x)
    }
}


#Tabel Frekuensi S
S1 <- table(S)

#Histogram
library(dplyr)
library(ggplot2)
S1 %>% as.data.frame %>% ggplot(aes(x=S,y=Freq/N))+geom_histogram(stat="identity")+scale_x_discrete(breaks=seq(0,50,by=5))

#Mean
mean(S)

#Variansi
var(S)

#Kuantil ke 5%
quantile(S,prob=seq(0.05,0.95))

#Kuantil ke 95%
quantile(S,prob=seq(0.95,0.05))

