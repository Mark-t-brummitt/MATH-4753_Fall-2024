#' @title My N Tickets
#'
#' @param N number of seats on the flight.
#' @param gamma probability a flight will be overbooked.
#' @param p probability of a 'show'.
#' @importFrom stats qbinom
#' @return a list and a plot of the objective function.
#'
#' @export
#'
#' @examples
# Function to calculate tickets to be sold
myntickets <- function(N, gamma, p) {

  # Calculate nd using discrete distribution
  nd <- qbinom(p, N, 1 - gamma)

  # Calculate mean and standard deviation for normal approximation
  mean_n <- N * (1 - gamma)
  sd_n <- sqrt(N * (1 - gamma) * gamma)

  # Calculate nc using normal approximation
  nc <- qnorm(p, mean = mean_n, sd = sd_n)

  # Create a named list to hold results
  results <- list(nd = nd, nc = nc, N = N, p = p, gamma = gamma)

  # Print the results
  print(results)

  # Generate values for n
  n_values <- seq(0, N, length=1000)

  # Objective function for discrete case
  objective_discrete <- 1 - qbinom(p, n_values, 1 - gamma)

  # Objective function for continuous case
  objective_continuous <- 1 - pnorm(n_values, mean_n, sd_n)




  # Plot for discrete case
  plot(n_values, objective_discrete, type="l", col="Purple")

  #Plot for continuous case
  plot(n_values, objective_continuous, type="l", col="Purple")

}
