#' Checks if a number is divisible by y
#' @param x numeric vector
#' @param y a number
#' @return boolean
#' @export
divisible <- function(x, y) {
  x %% y == 0
}

#' Is odd?
#' @param x numeric vector
#' @export
is.odd <- function(x) {
  !divisible(x, 2)
}

