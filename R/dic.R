#' Checks if a number is divisible by y
#' @param x numeric vector
#' @param y a number
#' @return boolean
#' @export
divisible <- function(x, y) {
  x %% y == 0
}

#' Is odd or even?
#' @param x numeric vector
#' @export
#' @aliases is.odd is.even
is.odd <- function(x) {
  !divisible(x, 2)
}

#' @export
is.even <- function(x)
  !is.odd(x)

#' Parity
#' @param x numeric vector
#' @export
parity <- function(x) {
  res <- list(
      odd  = x[is.odd(x)],
      even = x[is.even(x)],
      table = table(is.odd(x))
    )
  structure(res, class = 'parity')
}

#' method plot parity
plot.parity <- function(x, ...) {
  barplot(x$table, ...)
}
