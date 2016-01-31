## Goal is to cache potentially time-consuming computations. With 2 funtions.

makeCacheMatrix <- function(x = matrix(x)) {
    i<-NULL #set the cache (inverse matrix) NULL at the start of running the code.
    set<-function(y){ #subfunction that makes & sets the matrix
        x<<-y 
        i<<-NULL
   }
    get<-function () x #get the value of the vector
    setmatrix<-function(matrix) i<<-set #set the matrix to invert
    getmatrix ()<-function () i #get the inverted matrix 
    list(set=set, get=get, #setting the getters & setters
        setmatrix=setmatrix, 
        getmatrix=getmatrix) 
## cacheSolve: computes the inverse of the special "matrix" returned  above. 
##If the inverse has already been calculated (and the matrix has not changed), 
## then the cacheSolve() should retrieve the inverse from the cache.
                  
cacheSolve <- function(x,...) {
## If the cache containts it, return a matrix that is the inverse of 'x'
    i<-x$getmatrix() getting inverted matrix from cache
    if(!is.null (i)) { #if the cache isn't empty then...
        message("getting cached data")
        return(i)
        }
## this is like an "else", if the cache is empty then compute the inverse
    get(x) #get matrix to be invereted    
    solve(x) #invert the matrix
}
