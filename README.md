# `mise`: R package for clearing the workspace (mise en place)

## Description

Clears the workspace. Useful for the beginnings of R scripts, to avoid potential problems with accidentally using information from variables or functions from previous script evaluations, too many figure windows open at the same time, packages that you don't need any more, or a cluttered console.

## Installation

**Update, 30 June 2016:** `mise` v0.1.0 is now available from CRAN!  You can install it from the command line in R using 

```
install.packages("mise")
```

Any changes to `mise` will be pushed to this Github repository before the updated package is submitted to CRAN.  To install the Github version of `mise` from within R, 

```
install.packages("devtools")
library("devtools")
install_github("papplegate/mise")
```

## Commands 

`clear_console`	Clear the Console  
`clear_figs`	Clear All Figures  
`clear_funs`	Clear All Functions  
`clear_pkgs`	Clear All Packages  
`clear_vars`	Clear All Variables  
`mise`	Clear the Workspace (Mise en Place)  

## Usage

`mise(vars = TRUE, funs = TRUE, figs = TRUE, console = TRUE,
  pkgs = FALSE, where = parent.frame(1))`

## Arguments

`vars`	clear all variables in the parent environment?  
`funs`  clear all functions in the parent environment?
`figs`	close all figure windows?  
`console`	clear the console?  
`pkgs`	clear all non-base packages?  Defaults to FALSE.  
`where` which environment to delete variables and functions from; defaults to the calling environment

## Details

Based on StackOverflow contributions from users David Robinson, shadow, Gavin Simpson, Ramnath, Joshua Ulrich, E Luxo So, Josh O'Brien, and krlmlr; see  

http://stackoverflow.com/questions/29758000/function-to-remove-all-variables  
http://stackoverflow.com/questions/8305754/remove-all-variables-except-functions   http://stackoverflow.com/questions/19449066/command-to-close-plots-in-r   http://stackoverflow.com/questions/7505547/detach-all-packages-while-working-in-r   http://stackoverflow.com/questions/12389158/check-if-r-is-running-in-rstudio  

## Examples

```
library(mise)
x <- seq(1, 10, by = 1)
y <- x+ rnorm(10, mean = 0, sd = 1)
plot(x, y)
ls()
# change figs to TRUE to also clear the figure
mise(figs = FALSE)
ls()
```
