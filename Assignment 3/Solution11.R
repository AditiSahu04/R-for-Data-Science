y<-"apple,apple and apple"
nchar(y)
ya<-substr(y,start=1,stop=5)
sub(pattern="apple",replacement="oranges",x=y)
gsub(pattern="apple",replacement="oranges",x=y)
