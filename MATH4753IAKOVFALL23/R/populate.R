#' Fire Incident Data
#'
#' A dataset containing information on various fire incidents. Each row represents a unique fire incident with details about the date, location, severity, and acres burned.
#'
#' @format A data frame with 4 rows and 5 columns:
#' \describe{
#'   \item{\code{IncidentID}}{An integer vector of incident IDs.}
#'   \item{\code{Date}}{The dates of the incidents as \code{Date} objects.}
#'   \item{\code{Location}}{Character vector of the locations of the incidents.}
#'   \item{\code{Severity}}{Character vector indicating the severity of each incident (High, Medium, Low).}
#'   \item{\code{AcresBurned}}{A numeric vector of the number of acres burned in each incident.}
#' }
fire_data <- data.frame(
  IncidentID = 1:4,
  Date = as.Date(c("2022-06-01", "2022-06-15", "2022-07-20", "2022-08-05")),
  Location = c("ForestA", "ForestB", "ForestC", "ForestD"),
  Severity = c("High", "Medium", "Low", "High"),
  AcresBurned = c(1500, 500, 250, 2000)
)
save(fire_data, file = "fire.rda")

