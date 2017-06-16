## Put comments here that give an overall description of what your
## functions do
## My function will calculate the inverse of a matrix and store it
## in cache. The next time you want to get the inverse of the same
## matrix, this function will get the inverse of this matrix directly
## from the cache without calculating it again.


## Write a short comment describing this function
## My function "makeCacheMatrix" will store a matrix, and generate
## a list consist of four functions within the "makeCacheMatrix" scope. 


makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function
## The "cacheSolve" will first check if the inverse of the matrix
## within the "makeCacheMatrix" scope has been calculated. If yes,
## the function will return the inverse directly without calculating.
## If not, it will calculate and return the inverse of this matrix. 


cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s

  ## Return a matrix that is the inverse of 'x'

  
}
