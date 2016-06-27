# `mise`: R package for clearing the workspace (mise en place)

## Description

Clears the workspace. Useful for the beginnings of R scripts, to avoid potential problems with accidentally using information from variables or functions from previous script evaluations, too many figure windows open at the same time, packages that you don't need any more, or a cluttered console.

## Usage

mise(vars = TRUE, figs = TRUE, pkgs = TRUE, console = TRUE)

## Arguments

vars	clear all variables in the parent environment?
figs	close all figure windows?
pkgs	clear all non-base packages?
console	clear the console?

## Details

Based on StackOverflow contributions from users David Robinson, shadow, Gavin Simpson, Ramnath, Joshua Ulrich, E Luxo So, and krlmlr; see http://stackoverflow.com/questions/29758000/function-to-remove-all-variables http://stackoverflow.com/questions/19449066/command-to-close-plots-in-r http://stackoverflow.com/questions/7505547/detach-all-packages-while-working-in-r http://stackoverflow.com/questions/12389158/check-if-r-is-running-in-rstudio

## Examples

library(mise)
x <- seq(1, 10, by = 1)
y <- x+ rnorm(10, mean = 0, sd = 1)
plot(x, y)
ls()
mise()
