## Put comments here that give an overall description of what your
## functions do

## A pair of functions that cache the inverse of a matrix.


## Write a short comment describing this function
## This function creates a special “matrix” object that can cache its inverse.




makeCacheMatrix <- function(x = matrix()) {

    ## @x: a square invertible matrix 
   ## return: a list containing functions to
  ##              1. set the matrix
  ##              2. get the matrix
  ##              3. set the inverse
  ##              4. get the inverse
  

  f <- NULL
  set <- function(y) {
    x <<- y
    f <<- NULL
   
  }
   get <- function() x
  setinverse <- function(inverse) f <<- inverse
  getinverse <- function() f
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  f <- x$getinverse()
  
if(!is.null(f)){
  message("getting cached data")
  return(f)
}
data <- x$get()
f <- solve(data, ...)

x$setinverse(f)
f      
}

## Testing the Function

A <- matrix(c(4,3,2,1),2,2)

A1 <- makeCacheMatrix(A)

cacheSolve(A1)

