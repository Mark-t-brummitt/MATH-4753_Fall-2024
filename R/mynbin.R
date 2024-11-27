#' Negative Binomial Function
#'
#' @param y,r,p vectors of quantitative data
#'
#' @return a vector
#' @export
#'
#' @examples
#' mynbin(10,3,0.5)
mynbin=function(y,r,p){
  choose(y-1,r-1)*p^r*(1-p)^(y-r)
}
