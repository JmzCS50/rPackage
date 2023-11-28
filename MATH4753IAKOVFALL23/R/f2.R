#' Calculate Total Acres Burned
#'
#' Calculates the total number of acres burned in all recorded incidents.
#'
#' @return An integer representing the total acres burned.
#' @examples
#' calculate_total_acres_burned()
#' @export
calculate_total_acres_burned <- function() {
  sum(fire_data$AcresBurned)
}
