#make a special vector like makemean

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
}