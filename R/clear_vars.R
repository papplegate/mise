#' Clear All Variables
#'
#' Clears all variables from the present workspace.
#' @export

clear_vars <- function() {
  mise(vars = TRUE, funs = FALSE, figs = FALSE, console = FALSE, pkgs = FALSE, where = parent.frame(2))
}
