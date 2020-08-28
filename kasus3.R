#Kasus 3
#Grafik Ketidakpastian Setiap Tahunnya
x <- c(1:10)
y <- sample(c(0, 0.5, 1,2), size=10, replace=TRUE, prob=c(0.4, 0.3, 0.15, 0.15))
plot(x, y, type="b", xlab="Tahun", ylab="Besar Tanggungan", main="Ketidakpastian setiap tahunnya")
y1 <- NULL
for (i in 1:1000) {
  y1 <- sample(c(0, 0.5, 1, 2), size=10, replace=TRUE, prob=c(0.4, 0.3, 0.15, 0.15))
  lines(x, y1, type="b", col="blue")
}

#Grafik Rataan Pembayaran
bunga <- NULL
r <- 0.05
for(i in 1:10){
  bunga[i] <- (1+r)^(-i)
  print(bunga[i])
}
(jumlahbunga <- sum(bunga))


#Perulangan 1000
rataan1 <- NULL
for (i in 1:10) {
  rataan1[i] <- mean(sample(c(0, 0.5, 1, 2),size=1000,replace=TRUE,prob=c(0.4, 0.3, 0.15, 0.15)))
}
rataan1
plot(x, rataan1, type="b", main="Grafik Rataan Pembayaran (1000 Perulangan)", xlab="Tahun", ylab="Rata-rata Pembayaran")
(sum(rataan1)/10)*jumlahbunga

#Perulangan 5000
rataan2 <- NULL
for (i in 1:10) {
  rataan2[i] <- mean(sample(c(0, 0.5, 1,2), size=5000, replace=TRUE, prob=c(0.4, 0.3, 0.15, 0.15)))
}
rataan2
plot(x,rataan2, type="b", main="Grafik Rataan Pembayaran (5000 Perulangan)", xlab="Tahun", ylab="Rata-rata Pembayaran")
(sum(rataan2)/10)*jumlahbunga


