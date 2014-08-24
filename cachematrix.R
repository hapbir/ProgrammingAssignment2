## These are a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  sv <- NULL
  set <- function(y) {
    x <<- y
    sv <- NULL
  }
  get <- function() x
  setsolve <- function(solve) sv <<- solve
  getsolve <- function() m
  list(set = set, get = get, setsolve =setsolve, getsolve = getsolve)
}


## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been calculated (and 
## the matrix has not changed), then cacheSolve should retrieve the inverse 
## from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  sv <- s$getsolve()
  if(!is.null(sv)) {
    message("getting cached data")
    return(sv)
  }
  data <- x$get()
  sv <-solve(data,...)
  x$setsolve(sv)
  sv
}
