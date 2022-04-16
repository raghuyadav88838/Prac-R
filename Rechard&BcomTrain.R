#A vector is an array.
#All elements in a vector are of same data types, ex. Numeric, char..
v1 <- c("vet","zil","one","sol","btc")
v1[5]
v1[3:5]
v1[c(2,4)]
v1[c(-2,-3)]
v1[c(-1:-4)]
#Matrix
m1 <- matrix(1:6,nrow=2)
m1
#rbind and cbind
v2 <- c("max","will","ben")
v3 <- 1:3
cbind(v2,v3)
rbind(v2,v3)
rownames(m1) <- c("R1","R2")
m1
colnames(m1) <- c("C1","C2","c3")
m1
m1["R2","C2"]


#matplot
v4 <- floor(runif(25,min=50,max=101))
m3 <- matrix(v4,nrow=5)
colnames(m3) <- c("Test1","Test2","Test3","Test4","Test5")
rownames(m3) <- c("Wick","James","Tim","Sid","Kin")
m3
?matplot
t(m3)
matplot(t(m3))

matplot(t(m3), type="b", pch=15:18, col=c(1:4,6))
legend("topright", pch=15:18, legend=rownames(m3), col=c(1:4,6))
 
#matrix and Subsets
v4 <- floor(runif(25,min=50,max=101))
m3 <- matrix(v4,nrow=5)
colnames(m3) <- c("Test1","Test2","Test3","Test4","Test5")
rownames(m3) <- c("Wick","James","Tim","Sid","Kin")
m3
#Single value
m3[3,3]
m3["Sid","Test2"]
m3["Tim",5]
m3[15]
#Select Rows
m3[3,]
m3[c(1,4),]
m3[2:4,]
#Select Columns
m3[,5]
#Select multiple rows, col, etc..
m3[c(1,3),2:4]
m3[1,2:4,drop=F]
#Custom Function
Harry <- function(){
  return("Harry is cool!")
}
Harry()
#Ex 2
Harry <- function(x){
  return(rep("Harry is cool!",x))
}
Harry(6)
#Ex 3 default value
Harry <- function(x=2){
  return(rep("Harry is cool!",x))
}
Harry()
#LIST - Lists support multiple data types. Numeric, charm, etc.
p1 <- list("potter",32,150)
p1
names(p1) <- c("Name","Age","Weight")
p1
p1$Weight
p1$Age

## Rechard's
n1 <- 1:10
n1
o1 <- 21:30
plot(n1,o1,ylab ="speed(km)",xlab ="time(min)")
#VECTORS
u1 <- 1:15
u1
sum(u1)
mean(u1)
length(u1)
p1 <- rep(3,6)
p1
(r1 <- rep("TRUE",5)) #character
mode(r1)
(r2 <- rep(TRUE,5)) #without colon, it is logical
mode(r2)
class(r2)
(z <- seq(11,23,3))
(y <- seq(from = 1,to = 9,by = 2))
(h1 <- rep("FALSE",times=3))
e2 <- c(2.2,4.4,5.5)
(h2 <- rep(e2, each=3))
##MATRICES
data1 <- c(5,4,6,9)
data2 <- c(9,4,6,1)
rbind(data1,data2)
(s1 <- rbind(c(1,4),c(5,6)))
t(s1)
det(s1)
eigen(s1)
(rs <- rowSums(s1)) 
(cs <- colSums(s1))
##LISTs
mylist <- list("Goa",2.2,TRUE,"Manali")
class(mylist)
sapply(mylist,class) #sapply applies the function to each element of a list, vec or matrix
##Dataframe
IPLdata <- data.frame(Players = c("Mann","Raina","MS"),
                      Highscore = c(50,100,150),
                      Team = c("PKS","CSK","LSG"))
IPLdata
#how to install Packages
install.packages("epiR")
install.packages() #to see the list of pack available
library(epiR)
help(package = epiR)
remove.packages("epiR")



