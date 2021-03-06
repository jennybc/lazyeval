% Generated by roxygen2 (4.0.2): do not edit by hand
\name{as.lazy}
\alias{as.lazy}
\alias{as.lazy_dots}
\title{Convert an object to a lazy expression or lazy dots.}
\usage{
as.lazy(x, env = baseenv())

as.lazy_dots(x, env)
}
\arguments{
\item{x}{An R object. Current methods for \code{as.lazy()} convert formulas,
character vectors, calls and names. Methods for \code{as.lazy_dots()}
convert lists and character vectors (by calling \code{\link{lapply}()}
with \code{as.lazy()}.)}

\item{env}{Environment to use for objects that don't already have
associated environment.}
}
\description{
Convert an object to a lazy expression or lazy dots.
}
\examples{
as.lazy(~ x + 1)
as.lazy(quote(x + 1), globalenv())
as.lazy("x + 1", globalenv())

as.lazy_dots(list(~x, y = ~z + 1))
as.lazy_dots(c("a", "b", "c"), globalenv())
as.lazy_dots(~x)
as.lazy_dots(quote(x), globalenv())
as.lazy_dots(quote(f()), globalenv())
as.lazy_dots(lazy(x))
}

