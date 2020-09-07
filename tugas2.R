#Tugas2Teris
jumlahbesarklaim <- NULL
for(i in 1:1000){
  N <- rpois(100,0.01)
  X <- sample(c(100,200), size=100, replace=TRUE, prob=c(2/3,1/3))
  jumlahbesarklaim[i] <- sum(N*X)
  }
jumlahbesarklaim
table(jumlahbesarklaim)
plot(table(jumlahbesarklaim), xlab="Total Besar Klaim Tahunan", ylab="Frekuensi", main="Plot Frekuensi Total Besar Klaim Tahunan 
     Dengan 1000x Perulangan" )

#Plot Peluang Total Besar Klaim
Px=table(jumlahbesarklaim)/1000
plot(Px, xlab="Total Besar Klaim Tahunan", ylab="f(x)", main="Plot f(x) Total Besar Klaim Tahunan")
Px
#Plot Fungsi Distribusi Total Besar Klaim (F(x))
plot(ecdf(jumlahbesarklaim), ylab="F(x)",xlab="Total Besar Klaim Tahunan", main="Plot Fungsi Distribusi Total Besar Klaim Tahunan")
