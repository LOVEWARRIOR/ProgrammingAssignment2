## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(origin_matrix = matrix()) {
        #As you see , I wrote a human readable program
        #inverse means an inverse of a matrix
        #origin_matrix is the matrix you what to computes with
        #setinverse and getinverse have similar function like setmean and getmean
        
        inverse <- NULL
        set <- function(y) {
                origin_matrix <<- y
                inverse <<- NULL
        }
        get <- function() origin_matrix
        setinverse <- function(new_inverse) inverse <<- new_inverse
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}on


cacheSolve <- function(x,...) {
        #inverse is the answer we what , the inverse of a particular matrix
        # x is the cache where the program stores a spectial vector
        #created in last function (including inverse)
        #check if inverse has already in the x
        inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        matrix<- x$get()
        inverse<- solve(matrix,...)
        x$setinverse(inverse)
        inverse
}