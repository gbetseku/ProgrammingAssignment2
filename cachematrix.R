## Put comments here that give an overall description of what your
## The functions iin this script compute the inverse of a matrix cache the inverse matrix and use the cached inverse whne needed withiut recomputing it
## functions do

## Write a short comment describing this function
##This function computes the inverse of aninvertible matrix and makes a copy in cache

makeCacheMatrix <- function(x = matrix()) {
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
