## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix())
{
  i <- NULL # inverse matrix variable
  
  set <- function(matrix) #setting the matrix
  {
    m <<- matrix
    i <<- NULL
  }
  
  get <- function() #getting the matrix
  {
    m
  }
  
  setInverse <- function(inv) #setting the inverse of the matrix
  {
    i <<- inv
  }
  
  getInverse <- function()
  {
    i
  }
  
  #list of methods
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...)
{
  m <- x$getInverse() #gets the inverse of matrix
  
  if(!is.null(m)) # getting matrix from the Cache
  {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get() #getting matrix from object
  
  m <- solve(data) #calculating the inverse 
  
  x$setInverse(m) #setting the inverse
  
  m # returning the matrix
  
  
}
