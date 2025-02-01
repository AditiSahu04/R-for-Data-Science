k<-matrix(data=c(1,2,7),nrow=3,ncol=1)
l<-matrix(data=c(3,4,8),nrow=3,ncol=1)
k
l
m<-k*l
m
kt<-matrix(t(k))
kt
lt<-matrix(t(l))
lt

n<-kt*l
n


o<-lt*(k*kt)
o

p<-(k*kt)*lt
p

q<-solve[(l*lt)+(k*kt)-100*diag(3)]
q
