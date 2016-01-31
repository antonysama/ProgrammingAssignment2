## Goal is to cache potentially time-consuming computations. With 2 funtions.

makeCacheMatrix <- function(x = matrix(x)) {
    i<-NULL #set the cache (inverse matrix) NULL at the start of running the code.
    set<-function(y){ #subfunction that makes & sets the matrix
        x<<-y 
        i<<-NULL
   }
    get<-function () x #get the value of the vector
    setinverse<-function(matrix) i<<-set #set the matrix to invert
    getinverse ()<-function () i #get the inverted matrix 
    #listing the getters & setters:
    list(set=set, get=get, 
        setinverse=setinverse, 
        getinverse=getinverse) 
## cacheSolve: computes the inverse of the special "matrix" returned  above. 
##If the inverse has already been calculated (and the matrix has not changed), 
## then the cacheSolve() should retrieve the inverse from the cache.
                  
cacheSolve <- function(x,...) {
## If the cache containts it, return a matrix that is the inverse of 'x'
    i<-x$getinverse() getting inverted matrix from the cache
    if(!is.null (i)) { #if the cache isn't empty then...
        message("getting cached data")
        return(i)
        }
## else, if the cache is empty then compute the inverse matrix
    data<-get(x) #get matrix to be invereted    
    solve(x) #invert the matrix
}
