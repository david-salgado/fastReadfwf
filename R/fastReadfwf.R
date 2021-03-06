#' fastReadfwf: A package for fast-reading fixed-width files.
#'
#' The fastReadfwf package provides a standardised wrapper for functions
#' \code{\link[data.table]{fread}} and \code{\link[readr]{read_fwf}} from packages
#' \href{https://github.com/Rdatatable}{data.table} and \href{https://readr.tidyverse.org/}{readr}.
#'
#' The premise is the construction of a standardised schema to read each file. This schema
#' is essentially a data matrix with columns:
#'
#'  \itemize{
#'
#'    \item variable: the name of the variable.
#'    \item width: the number of positions which the values of this variable occupies in the file.
#'    \item initialPos: initial position of the field whic hthe values of this variable occupies in
#'    the file.
#'    \item finalPos: final position of the field whic hthe values of this variable occupies in the
#'    file.
#'    \item type: type of the variable. It must be either \code{num} or \code{char}.
#'    \item valueRegEx: regular expression for the values of this variable.
#'    \item description: textual description of the variable.
#'
#'  }
#'
#' This standardised schema is implemented as an S4 class called \linkS4class{StfwfSchema} with
#' constructors based on different input file formats (xlsx, csv, ...) specified by the user.
#'
#' The package provides different getters and setters for objects of this class.
#'
#' The core functions of the package, apart from the class management functions, are:
#'
#' \itemize{
#'
#'  \item \code{\link{fread_fwf}}, to read fixed-width files returning either
#'  \linkS4class{data.table}s or \code{\link[tibble]{tibble}}s.
#'
#'  \item \code{\link{validateValues}}, to validate the value of each variable in the fixed-width
#'  file according to the regular expressions specified in the standardised schema.
#'
#' }
#'
#' @docType package
#' @name fastReadfwf
NULL
