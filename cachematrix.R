## Put comments here that give an overall description of what your
## functions do

 
##finding the set matrix or cofactors, and solve the matrix to make a list with this elements
makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function()x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}
## if its the first time the function will solve the matrix, but the next time the answer is taked from the cache

cacheSolve <- function(x, ...) {
m<-x$getmatrix()
if(!is.null(m)){
message("cache solved")
return(m)
}
matrix<-x$get()
m<-solve(matrix, ...)
x$setmatrix(m)
m
}
