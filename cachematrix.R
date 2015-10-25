## These functions will take a matrix and invert it. It will first test to make sure it has not 
## already been inverted. If it has, it will retreive the matrix from a cache

## This function will create a matrix, calculate the inverse and cache it

        makeCacheMatrix <- function(mat=matrix()){
        stored <- NULL
        set <- function (y){
        mat <<- y
        stored <<- NULL
  }
        get <- function() mat
        setinverse <- function(solve) stored <<- inverse
        getinverse <- function() stored
        list(set=set, get=get,setinverse=setinverse, 
        getinverse=getinverse)
}
## This function will determine if the input matrix has been inverted. If it has, it will 
## retrieve the inverted matrix from the cache. If not, it will invert the input matrix

        cacheSolve <- function(x, ...){
        stored <- mat$getinverse()
        if(!is.null(stored)){
        message("getting cached data")
        return(stored)
  }
        data <- mat$get()
        stored <- inverse(data, ...)
        mat$setinverse(stored)
        stored
}
