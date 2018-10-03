library("readxl")
data <- read_excel("spambase.xlsx")

n=dim(data)[1]
set.seed(12345)
id=sample(1:n, floor(n*0.5))
train=data[id,]
test=data[-id,]

knearest=function(train,k,test) {
  
  n1=dim(train)[1]
  n2=dim(test)[1]
  p=dim(train)[2]
  Prob=numeric(n2)
  X=as.matrix(train[,-p])
  Xn=as.matrix(test[-p])
  X=X/matrix(sqrt(rowSums(X^2)), nrow=n1, ncol=p-1)

#MISSING: implement steps ii)-iv)
  
  for (i in 1:n2 ){
#MISSING: use the computed distance matrix to find 
    #which observations are the nearest neighbors to case #i
#MISSING: derive probability value 'Prob[i]' by using the
    #target values of the nearest neighbors
  }
  return(Prob)
}



ROC=function(Y, Yfit, p){
  m=length(p)
  TPR=numeric(m)
  FPR=numeric(m)
  for(i in 1:m){
    t=table(Yfit>p[i], Y)
    TPR[i]=#insert formula for TPR
    FPR[i]=#insert formula for FPR
  }
  return (list(TPR=TPR,FPR=FPR))
}

