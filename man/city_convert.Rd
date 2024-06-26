% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/city_convert.R
\name{city_convert}
\alias{city_convert}
\title{Convert to cities at different points in time}
\usage{
city_convert(city, from, to)
}
\arguments{
\item{city}{A \code{jpcity_city} object.}

\item{from}{A \code{character} (year, month, and day components) or date-time
object of the starting date.}

\item{to}{A \code{character} (year, month, and day components) or date-time
object of the ending date.}
}
\value{
A list of a \code{jpcity_city} object.
}
\description{
Convert to cities at different points in time
}
\examples{
city <- parse_city(c("01201", "01202"))
city_convert(city,
             from = "1970-04-01",
             to = "2020-01-01")

}
