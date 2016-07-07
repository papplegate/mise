#' Clear the Console
#'
#' Clears the console.
#' @export

clear_console <- function() {
  mise(vars = FALSE, funs = FALSE, figs = FALSE, console = TRUE, pkgs = FALSE)
}
