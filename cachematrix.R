## Goal is to cache potentially time-consuming computations. With 2 funtions.

## makeCacheMatrix: creates a special "matrix" object that can cache its inverse.
                  # Creating a set of random numbers to be passed down to makeCacheMatrix
                  d<-rnorm(16) #data for the matrix
                  r = 4 #rows in matrix
                  c = 4 #columns 
makeCacheMatrix <- function(x = matrix(x)) {
                  x<-matrix(d,r,c)
}
                  
##inverting the special matrix
                  inv<-solve(x)

##caching the inverted matrix
                  c<<-inv

## cacheSolve: computes the inverse of the special "matrix" returned  above. 
##If the inverse has already been calculated (and the matrix has not changed), 
## then the cacheSolve() should retrieve the inverse from the cache.
                  
cacheSolve <- function(y) {
## If the cache containts it, return a matrix that is the inverse of 'x'
  
                   if(!is.null (c)) {
                   message("getting cached data")
                   return(c)
                   }
## if the cache is null or empy then compute the inverse
                  solve(x)
}
