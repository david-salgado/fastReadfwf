% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/StxlsxToSchema.R
\name{StxlsxToSchema}
\alias{StxlsxToSchema}
\title{Build an object of class \linkS4class{StfwfSchema}.}
\usage{
StxlsxToSchema(xlsxName, sheetToRead, header = TRUE, lang = "en", ...)
}
\arguments{
\item{xlsxName}{Name of the xlsx file containing the schema.}

\item{sheetToRead}{Name or index of the sheet of the xlsx file.}

\item{header}{Does the first data line contain column names? Defaults to \code{TRUE}.}

\item{lang}{Character vector of length 1 indicating the language for the header in the xlsx file
(English: en).}

\item{...}{Extra arguments for \code{\link[data.table]{fread}}.}
}
\value{
Return an object of class \linkS4class{StfwfSchema}.
}
\description{
\code{XLSToSchema} is a constructor of the class \linkS4class{StfwfSchema}.

This constructor reads an Excel file containing partially or totally the schema of the
fixed-width file to read. This file must contain a tag with name \code{Schema} (en) or
\code{DiseñoRegistro} (sp) and the following named columns:

\itemize{

   \item \code{variable} (en, sp): the name of the variable.
   \item \code{width} (en) or \code{anchura} (sp): the number of positions which the values of
   this variable occupies in the file.
   \item \code{initialPos} (en) or \code{posInicial} (sp): initial position of the field which
   the values of this variable occupies in the file.
   \item \code{finalPos} (en) or \code{posFinal} (sp): final position of the field which the
   values of this variable occupies in the file.
   \item \code{type} (en) or \code{tipo} (sp): type of the variable. It must be either \code{log},
   \code{integer}, \code{num} or \code{char}.
   \item \code{valueRegEx} (en) or \code{regExValor} (sp): regular expression for the values of
   this variable.
   \item \code{description}: textual description of the variable.

}

The tag must have a header in file 1. Only English is supported so far.
}
\examples{
path <- system.file('extdata', package = 'fastReadfwf')
StxlsxToSchema(file.path(path, 'SchemaSNHS.xlsx'), 'stSchema')

}
