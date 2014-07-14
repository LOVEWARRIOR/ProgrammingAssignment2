#find the inverse if it exits

cacheSolve <- function(x, matrix) {
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
        inverse<- solve(matrix)
        x$setinverse(inverse)
        inverse
}