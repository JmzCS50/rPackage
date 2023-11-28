#' Get Fire Details by Incident ID
#'
#' Retrieves details of a forest fire incident given its ID.
#'
#' @param incident_id An integer representing the Incident ID.
#' @return A data frame row with the details of the specified fire incident.
#' @examples
#' get_fire_details_by_id(2)
#' @export
get_fire_details_by_id <- function(incident_id) {
  fire_data[fire_data$IncidentID == incident_id, ]
}


