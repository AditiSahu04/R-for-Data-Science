xk<-c("jan","mar","feb","apr","may","dec","nov")
factor(x=xk)
xl<-c("jan","feb","mar","apr","may","june","july","aug","sep","oct","nov","dec")
xm<-factor(x=xk,levels=xl,ordered=TRUE)
xm