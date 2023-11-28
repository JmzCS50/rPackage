#' Plot and Calculate Area Under Normal Curve
#'
#' This function plots a normal distribution curve with given mean (`mu`) and standard deviation (`sigma`),
#' shades the area under the curve up to a specified value (`a`), and calculates the cumulative probability up to that point.
#'
#' @param mu Mean of the normal distribution.
#' @param sigma Standard deviation of the normal distribution.
#' @param a The x-value up to which the area under the curve is shaded and probability calculated.
#'
#' @return A list containing the calculated probability (area under the curve) up to the value `a`.
#'
#' @examples
#' myncurve(mu = 0, sigma = 1, a = 1.96)
#' @export
myncurve = function(mu, sigma, a){
  # Plot the normal curve
  curve(dnorm(x, mean=mu, sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma),
        ylab='Density', xlab='x', main=paste("Normal Curve: mu =", mu, ", sigma =", sigma))

  # Shade the area under the curve from -Inf to a
  x_vals <- seq(mu - 3*sigma, a, length.out = 1000)
  polygon(c(min(x_vals), x_vals, a), c(0, dnorm(x_vals, mean=mu, sd=sigma), 0), col='skyblue')

  # Calculate the probability P(X <= a)
  prob <- pnorm(a, mean=mu, sd=sigma)

  # Return the probability
  return(list(probability = prob))
}
