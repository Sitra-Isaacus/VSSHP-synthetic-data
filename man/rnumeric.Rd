% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/random_generators.R
\name{rnumeric}
\alias{rnumeric}
\title{Generate random numbers}
\usage{
rnumeric(fun = runif, cols, size, integers = FALSE, lower = NA,
  upper = NA, ...)
}
\arguments{
\item{fun}{Function to be called}

\item{cols}{Column name}

\item{size}{Number of rows to be generated}

\item{integers}{Coerce the results to integers (using
\code{\link[base]{floor}})}

\item{lower}{Lower limit}

\item{upper}{Upper limit}
}
\description{
A Wrapper to R random number generators that follows the same
semantics as the other data generating functions.
}
\details{
The function can be used to call R random number
generators like \code{\link[stats]{runif}},
\code{\link[stats]{rnorm}}, \code{\link[stats]{rpois}}, etc. that
accept 'n' as the number of values to be generated. The unnamed
arguments are passed to these functions. Examples illustrate best
the usage of this function.
}
\examples{
rnumeric(runif, "dot_count", 10, integers=TRUE, min=5, max=15)
rnumeric(rnorm, "root_lenght", 10, mean=30, sd=5)
rnumeric(rpois, "visit_time_min", 10, lower=10, lambda=20)
}

