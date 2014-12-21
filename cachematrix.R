## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    xn <- NULL
    set<- function(y){
        if(nrow(y)==ncol(y)){
            x <<- y
            xn<<- NULL
        }else{print("Please check you matrix again.")}
    }
    get <- function() x
    setSolve <- function(yn) xn<<- yn
    getSolve <- function() xn
    list(set = set, get = get,
         setSolve = setSolve,
         getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    xn<- x$getSolve()
    if(!is.null(xn)){
        message("Getting inverse matrix...")
        return(xn)
    }
    ninverse <- x$get()
    xn <- solve(ninverse)
    x$setSolve(xn)
    xn
}
