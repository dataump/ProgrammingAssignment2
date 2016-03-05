## Functions create a cache of an inverse matrix

## Function creates an inverse matrix

makeCacheMatrix <- function(x = matrix()){
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setmatrix = setmatrix, getinverse = getinverse)
}


## Function allows use of a cache inverse matrix

CacheSolve <- function(x, ...) {
m <- x$getinverse()
if (!is.null(m)) {
message("getting cached data")
return (m)
}
data <- x$get()
m <- inverse(data, ...)
x$setinverse(m)
m
}
