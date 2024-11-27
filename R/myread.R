#' My Read Function
#'
#' @param csv a data set
#'
#' @return a table
#' @export
#'
myread=function(csv){
  fl=paste(dird='',csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}
