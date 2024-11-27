#' @title My Confidence Interval Function
#'
#' @param x the dataset
#'
#' @importFrom stats t.test
#' @return Two vectors
#'
#' @export
#'
#' @examples
# Function to calculate 95% confidence intervals.
myci <- function(x){
  t.test(x,conf.level=0.95)$conf.int
}
