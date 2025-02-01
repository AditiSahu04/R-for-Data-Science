know<-matrix(data=c(1,0,0,0,2,0,0,0,-2),nrow=3,ncol=3)
know
z1<-solve(know)
z1 

z2<-diag(3)
z2
z3<-z1-know-z2
z3