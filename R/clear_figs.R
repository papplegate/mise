#' Clear All Figures
#'
#' Clears all figures.
#' @export

clear_figs <- function() {
  mise(vars = FALSE, funs = FALSE, figs = TRUE, console = FALSE, pkgs = FALSE)
}
