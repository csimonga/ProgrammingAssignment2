
## la funcion almacenara el valor de la matriz, calcualara y retendra el valor de la matriz inversa

makeCacheMatrix <- function(x = matrix()) {
i <- NULL 
  set <- function(y) { ## aqui se carga en la nuva variable interna el valor de la matriz 
          x <<- y
          i <<- NULL
}
get <- function() x  ##aqui se calculan las inversas y notese que el contador i acumula el valor de inversos, posterior se crea una lista de datos 
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

## una vez acumulado habra una funcion que lea esta lista acumulada y pueda extraer el valor inverso de la matriz
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")  ##puede ocurrir que se cambiaron los datos o que no hay valor inverso 
          return(i)
}
data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
        i} ## al i acumular el inverso podra esta fucnion devolver su valor
