## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the code is quit similar with the example code 
## which don't need too much adoption and could be 
## worked out by replacing the "mean" by "solve"

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
## Using the  "solve" function to compute the inverse matrix

cacheSolve <- function(x_2, ...) {
        ## Return a matrix that is the inverse of 'x'
        temp_inverse <- x_2$getinverse()
        if (!is.null(temp_inverse)) {
                message("getting cached data")
                return(temp_inverse)
        }
        matrix <- x_2$get()
        temp_inverse <- solve(matrix, ...)
        x_2$setinverse(temp_inverse)
        temp_inverse
}
