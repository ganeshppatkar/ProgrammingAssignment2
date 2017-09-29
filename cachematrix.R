## Put comments here that give an overall description of what your
## Below two functions are used to cache the inverse a matrix and caching it to avoid computing it 
## multiple times.

## Write a short comment describing this function
## makeCachMatrix will create a list containing a function to
## Set and get the value of the matrix
## Set and get value of inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        invMatrix <- NULL
        set <- function (y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invMatrix <<- inverse
        getinverse <- function() invMatrix
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## Below function returns the inverse of a matrix, set the value in the cache via 
## setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
