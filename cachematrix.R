## Put comments here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix

## Write a short comment describing this function
## Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function( matrix ) {
m <<- matrix
i <<- NULL
}
get <- function() {
m
}
setInverse <- function(inverse) {
i <<- inverse
}
getInverse <- function() {
i
}
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}


## Write a short comment describing this function
## Compute the inverse of the special matrix returned by "makeCacheMatrix"
## above. If the inverse has already been calculated (and the matrix has not
## changed), then the "cachesolve" should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
m <- x$getInverse()
if( !is.null(m) ) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data) %*% data
x$setInverse(m)
m
}
