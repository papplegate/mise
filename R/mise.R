#' Clear the Workspace (Mise en Place)
#'
#' Clears the workspace.  Useful for the beginnings of R scripts, to
#' avoid potential problems with accidentally using information from
#' variables or functions from previous script evaluations, too many
#' figure windows open at the same time, packages that you don't
#' need any more, or a cluttered console.
#'
#' Based on StackOverflow contributions from users David Robinson,
#' shadow, Gavin Simpson, Ramnath, Joshua Ulrich, E Luxo So,
#' and krlmlr; see
#' http://stackoverflow.com/questions/29758000/function-to-remove-all-variables
#' http://stackoverflow.com/questions/19449066/command-to-close-plots-in-r
#' http://stackoverflow.com/questions/7505547/detach-all-packages-while-working-in-r
#' http://stackoverflow.com/questions/12389158/check-if-r-is-running-in-rstudio
#'
#' @param vars clear all variables and functions in the parent environment?
#' @param figs close all figure windows?
#' @param pkgs clear all non-base packages?
#' @param console clear the console?
#' @keywords rm, graphics.off(), detach, clear
#' @export
#' @examples
#' library(mise)
#' x <- seq(1, 10, by = 1)
#' y <- x+ rnorm(10, mean = 0, sd = 1)
#' plot(x, y)
#' ls()
#' # change figs to TRUE to also clear the figure
#' mise(figs = FALSE)
#' ls()

mise <- function(vars = TRUE, figs = TRUE, pkgs = TRUE, console = TRUE) {

  # delete all variables and functions from memory
  # source: user David Robinson, http://stackoverflow.com/questions/29758000/function-to-remove-all-variables
  if (vars) {
    where <- parent.frame()
    rm(list = ls(envir = where), envir = where)
  }

  # close all open plots
  # source: user shadow, http://stackoverflow.com/questions/19449066/command-to-close-plots-in-r
  if (figs && !is.null(grDevices::dev.list())) {
    # plot(1, 1)
    grDevices::graphics.off()
  }

  # unload packages
  # source: users Gavin Simpson and Ramnath, http://stackoverflow.com/questions/7505547/detach-all-packages-while-working-in-r
  if (pkgs) {
    extra.pkgs <- paste("package:", names(utils::sessionInfo()$otherPkgs), sep = "")
    lapply(extra.pkgs, detach, character.only = TRUE, unload = TRUE, force = TRUE)
  }

  # clear the console
  # first checks to see if RStudio is in use and chooses a command appropriately
  # source: users Joshua Ulrich and E Luxo So, http://stackoverflow.com/questions/14260340/function-to-clear-the-console-in-r
  # also see user krlmlr's post at http://stackoverflow.com/questions/12389158/check-if-r-is-running-in-rstudio
  if (console) {
    if (Sys.getenv("RSTUDIO") == 1) {
      cat("\014") # works in RStudio
    } else {
      cat(rep("\n",50)) # works in environments other than RStudio
    }
  }

} # end function mise
