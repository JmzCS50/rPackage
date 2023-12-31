% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f3.R
\name{filter_incidents_by_severity}
\alias{filter_incidents_by_severity}
\title{Filter Incidents by Severity}
\usage{
filter_incidents_by_severity(severity)
}
\arguments{
\item{severity}{A string representing the severity level ('High', 'Medium', 'Low').}
}
\value{
A subset of the fire_data data frame.
}
\description{
Returns a subset of the dataset filtered by the specified severity.
}
\examples{
filter_incidents_by_severity("High")
}
