## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

MakeCasheMatrix <-function(x = matrix()){
            inv <-NULL            ## initializing inverse as NULL
            set <-function(t){
              t <<- x
            inv <<- NULL
          }
           get <- function() {x}   ## getting the matrix
           setInverse <- function(inverse) { inv<<- inverse }
           getInverse <- function(inverse) {inv}
           list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function
## used to get the cashed data

Cashesolve <- function(x, ...) ##gets cashe data
{
        inv<- X$getInverse()
        if(!is.null(inv))      ##checking if inverse is NULL
        {
          message("get cached data")
          return(inv) ## returns the inverted value
        }
        mat <- x$get()
        inv<- solve(mat, ...) ##solves the matrix 
        x$SetInverse(inv)
        inv
}
}
