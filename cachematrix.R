## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
temp_inverse <- NULL
        set <- function(y) {
                x <<- y
                temp_inverse <<- NULL
        }
        get <- function() 
        x
        setinverse <- function(inverse) 
        temp_inverse <<- inverse
        getinverse <- function() 
        temp_inverse
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        temp_inverse <- x$getinverse()
        if (!is.null(temp_inverse)) {
                message("getting cached data")
                return(temp_inverse)
        }
        matrix <- x$get()
        temp_inverse <- solve(matrix, ...)
        x$setinverse(temp_inverse)
        temp_inverse
}
