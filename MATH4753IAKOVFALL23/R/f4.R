#' List Incidents by Location
#'
#' Lists all fire incidents recorded at a given location.
#'
#' @param location A string representing the location.
#' @return A subset of the fire_data data frame.
#' @examples
#' list_incidents_by_location("ForestA")
#' @export
list_incidents_by_location <- function(location) {
  fire_data[fire_data$Location == location, ]
}
