## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Here this inuput z as a matrix
## and solved as a null "a"
## changing "solve" as a reference for "mean"

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) a <<- solve
  getsolve <- function() a
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## In this, "mean" is returned to "solve" and "s" to "m"
cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
 a <- x$getsolve()
 if(!is.null(a)) {
  message("getting inversed matrix")
  return(a)
 }
 data <- x$get()
 a <- solve(data, ...)
 x$setsolve(a)
 a
}
