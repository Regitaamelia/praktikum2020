x = c(1:10)
i = 6

for (i in )
if(x[i]%%2 == 0) {
  print("Angka Genap")
} else if(x[i]%%2 != 0) {
  print("Angka Ganjil")
} else {
  print("Bukan Angka")
}



x = c(1:10)
i = 6

if(x[i]%%2 == 0) {
  print("Angka Genap")
} else if(x[i]%%2 != 0) {
  print("Angka Ganjil")
} else {
  print("Bukan Angka")
}



y = 3
ifelse(x%%2 == 0, print("Genap"), print("Ganjil")) ##mengeceknya bisa lebih dari satu kali


#contoh function :
##membuat rata-rata
rata <- function(a) {
  s = sum(a)
  n = length(a)
  s/n
}

rata(1:10)

ganjilGenap <- function(a){
  ifelse(a%%2 == 0, "Genap", "Ganjil")
}


library(dslabs)
data(murders)
murder_rate = murders$total / murders$population*100000
murder_rate
rateintext = c()
for(i in 1:10){
  if(murder_rate[i] < 3) {
    rateintext[i] = "Kecil"  
  } else{
    rateintext[i] = "Besar"
  }
}
ifelse(murder_rate < 3, "Kecil", "Besar")


compute_s_n = function(n){
  x = 1:n
  sum(x)
}


m = 25
s_n = vector(length = m)
for(n in 1:m){
  s_n[n] = compute_s_n(n)
}
s_n

m
sapply(1:25, compute_s_n) #menyingkat codingan dari sebelumnya


rateintext = function(x){
  if(x < 3) {
    "Kecil"  
  } else{
    "Besar"
  }
}

a = sapply(murder_rate,rateintext) #menyingkat codingan dari sebelumnya
a

rateintext







































