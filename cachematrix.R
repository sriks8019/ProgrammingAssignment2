## Put comments here that give an overall description of what your
## functions do

## The following method takes a matrix as input and returns a special vector.
## this special vector is a list of methods that enable setting and retrieving 
## the value of the input(or original matrix) caching the inverse and accessing the cached inverse

makeCacheMatrix <- function(x = matrix()) {
  ## inverse of the matrix will be stored in a vector called i
  i <- NULL
  
  ## set : Set function sets the value of the matrix and clears cache
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  ## get : gets the input matrix
  get <- function() x
  
  ## cache the inverse of the matrix 
  setinverse <- function(inverse) i <<- inverse
  
  ## get the value of the inverse stored in i
  getinverse <- function() i
  
  ## return the 'special' Vector
  list(set = set, get = get,
       setmean = setinverse,
       getmean = getinvers
}


## the following function calculates, caches and returns the inverse of the special  
## matrix created makeCacheMatrix function, if it's inverse is already calculated and cached
## it gets the cached value instead of calculating again

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ## calculate inverse of the matrix using solve function
  i <- solve(data, ...) 
  ## cache the inverse matrix
  x$setinverse(i)
  
  ## Return the matrix that is the inverse of 'x'
  i
 
}
