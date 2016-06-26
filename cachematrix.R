## Created By Yannis Lazaridis
## Creating a function that computes the inverse of a matrix

## makeCacheMatrix:creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    m<-NULL ##initialize m (the inverse property)
    
    ## Method to set the matrix
    set<-function(y){
        x<<-y
        m<<-NULL
    }
    ## Method the get the matrix
    get <- function() {
        ## Return the matrix
        x
    }
    ## Setter function for m
    setInverse <- function(inverse) {
        i <<- inverse
    }
    ## Getter function to return m
    getInverse <- function() {
        m
    }
    ## Return a list of the methods
    list(set = set, get = get,
    setInverse = setInverse,
    getInverse = getInverse)
    
}


## The below function computes the inverse matrix. If the inverse of a matrix already exists , then cacheSolve
## retrieves the inverse from the cache
cacheSolve <- function(x, ...) {
    
    m <- x$getInverse() ## Returns an inversed matrix of 'x'
    
    if( !is.null(m) ) { ## Returns the inverse if its already set
        message("getting cached data")
        return(m)
    }
    
    Matrix1 <- x$get() ## Get the matrix
    
    m <- solve(data) %*% Matrix1 ## Calculate the inverse using matrix multiplication
    
    x$setInverse(m) ## Set the inverse to the object
    
    m ## Returns the inverse of the matrix
}
