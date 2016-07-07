#' Clear All Functions
#'
#' Clears all functions from the present workspace.
#' @export

clear_funs <- function() {
  mise(vars = FALSE, funs = TRUE, figs = FALSE, console = FALSE, pkgs = FALSE, where = parent.frame(2))
}
