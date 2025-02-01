r<-matrix(data=c(2,0,0,0,0,3,0,0,0,0,5,0,0,0,0,-1),nrow=4,ncol=4)
r
r1<-solve(r)
r1
r2<-diag(4)
r2
r3<-r1-r-r2
r3