#' Filter Incidents by Severity
#'
#' Returns a subset of the dataset filtered by the specified severity.
#'
#' @param severity A string representing the severity level ('High', 'Medium', 'Low').
#' @return A subset of the fire_data data frame.
#' @examples
#' filter_incidents_by_severity("High")
#' @export
filter_incidents_by_severity <- function(severity) {
  fire_data[fire_data$Severity == severity, ]
}
