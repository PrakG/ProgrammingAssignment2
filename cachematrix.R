## The below 2 functions are used to create a matrix object and cache 
## the inverse of the matrix


## Creating a special matrix object that contains a list to
## set the value of matrix, get the value of matrix
## set the iverse of matrix, get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y)
{
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
## Returning inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m))
  {
    message("getting cached value")
    return(m)
  }
  else {
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
  }
  m
}

