## The functions in this script compute the inverse of a matrix cache the inverse matrix and use the cached inverse when needed without recomputing it

##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}

## This function returns a cached version of the inverse of a matrix
## if the inverse of the matrix does not exist, the inverse is calculated,placed in cache and returned
cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)## compute inverse of matrix
  x$setInverse(m)## place inverted matrix in cache
  m
}
