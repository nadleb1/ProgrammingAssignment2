## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function creates matrix to be inversed further
makeCacheMatrix <- function(newX = matrix()) {
inverse <- NULL
    set <- function(newX) {
        mtx <<- newX;
        inverse <<- NULL;
    }
    get <- function() return(mtx);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function
## This function inverses the matrix from previous function
cacheSolve <- function(x, ...) {
        inverse <- mtx$getinv()
    data <- mtx$get()
    inverse <- solve(data, ...)
    mtx$setinv(inverse)
    return(inverse)## Return a matrix that is the inverse of 'x'
}
