## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    xn <- NULL                                  ## xn is the inverse of matrix
    set<- function(y){                          ## set value of matrix "x"
        if(nrow(y)==ncol(y)){
            x <<- y
            xn<<- NULL
        }else{print("Please check you matrix again.")}
    }
    get <- function() x                         ## get values of "x"
    setSolve <- function(yn) xn<<- yn           ## set inverse matrix of matrix "x"
    getSolve <- function() xn                   ## get inverse matrix of matrix "x"
    list(set = set, get = get,                  ## return value of "x"
         setSolve = setSolve,
         getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        xn<- x$getSolve()
        if(!is.null(xn)){                       ## find if the inverse martix exist
        message("Getting inverse matrix...")
        return(xn)
    }
        ninverse <- x$get()                     ## declare the value of non-inverse matrix value
        xn <- solve(ninverse)                   ## solve
    x$setSolve(xn)
    xn                                          ## return
}
