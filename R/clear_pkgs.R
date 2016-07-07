#' Clear All Packages
#'
#' Closes all packages that aren't part of base R.
#' @export

clear_pkgs <- function() {
  mise(vars = FALSE, funs = FALSE, figs = FALSE, console = FALSE, pkgs = TRUE)
}
