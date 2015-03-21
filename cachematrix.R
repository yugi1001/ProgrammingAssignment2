## Put comments here that give an overall description of what your
## functions do

## This is a matrix object to cache the matrix calculation

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(solve) i <<- solve
  getinv <- function() i
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## Calculate the inverse of the  matrix returned by `makeCacheMatrix` 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<- x$getinv()
  if(!is.null(i)) {
        return(i)
  }
  data <- x$get()
  i<- solve(data, ...)
  x$setinv(i)
  i
  

}
