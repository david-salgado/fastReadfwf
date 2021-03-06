#' @title Return variable names from the input schema.
#'
#' @description \code{getVariables} extracts the slot \code{df} of the input object and returns its
#' column \code{variable} as a vector.
#'
#' @param object Object of class \linkS4class{StfwfSchema}.
#'
#' @return A character vector.
#'
#' @examples
#' # A trivial example:
#' df <- data.frame(variable = c('Turnover', 'Employees'),
#'                  width = c(9L, 3L),
#'                  initialPos = c(1, 10),
#'                  finalPos = c(9, 12),
#'                  type = rep('num', 2),
#'                  valueRegEx = c('[0-9]{0,9}', '[0-9]{0,3}'),
#'                  description = c('Turnover of the business unit',
#'                                  'Number of employees of the business unit'),
#'                  stringsAsFactors = FALSE)
#' Schema <- new(Class = 'StfwfSchema', df = df)
#' getVariables(Schema)
#'
#'
#' @include getdf.R
#'
#' @export
setGeneric("getVariables", function(object){standardGeneric("getVariables")})

#' @rdname getVariables
#'
#' @export
setMethod(
  f = "getVariables",
  signature = c("StfwfSchema"),
  function(object){getdf(object)[['variable']]}
)

