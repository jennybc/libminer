% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lib-summary.R
\name{lib_summary}
\alias{lib_summary}
\title{R Library Summary}
\usage{
lib_summary(sizes = FALSE)
}
\arguments{
\item{sizes}{Logical. Requests the size of the package library on disk.}
}
\value{
A data.frame containing the count of packages in each of the user's
libraries. If \code{sizes} is \code{TRUE}, also gives library size.
}
\description{
Provides a brief summary of the package libraries on your machine. I'm so
excited to have written this!
}
\examples{
lib_summary()
}
